local GET_EVENT_DATA = 0x57EC5FA4D4D6AFCA

local Registry = {}
local Listeners = {}
local ListenersById = {}
local GroupListenerCount = { [0] = 0, [1] = 0, [2] = 0, [3] = 0 }
local NextListenerId = 1
local GroupThreadsStarted = {}

local function BuildRegistry()
    for groupId, groupEvents in pairs(Events) do
        for name, def in pairs(groupEvents) do
            local hash = joaat(name)
            Registry[hash] = {
                Name = name,
                EventGroup = groupId,
                DataSize = def.DataSize,
                FloatSlots = def.FloatSlots or {},
            }
        end
    end
end

local function AllocateBuffer(eventDef)
    local buf = DataView.ArrayBuffer(8 * eventDef.DataSize)
    for slot = 0, eventDef.DataSize - 1 do
        if eventDef.FloatSlots[slot] then
            buf:SetFloat32(slot * 8, 0.0)
        else
            buf:SetInt32(slot * 8, 0)
        end
    end
    return buf
end

local function ReadBuffer(eventDef, buf)
    local data = {}
    for slot = 0, eventDef.DataSize - 1 do
        if eventDef.FloatSlots[slot] then
            data[#data + 1] = buf:GetFloat32(slot * 8)
        else
            data[#data + 1] = buf:GetInt32(slot * 8)
        end
    end
    return data
end

local function DispatchEvent(eventDef, data)
    local hooks = Listeners[eventDef.Name]
    if hooks then
        local eventName = eventDef.Name
        for i = 1, #hooks do
            local hook = hooks[i]
            if hook then
                CreateThread(function()
                    local ok, err = pcall(hook.callback, eventName, data)
                    if not ok then
                        print(('^1[gs_events]^7 listener %d (%s) failed: %s'):format(
                            hook.id, hook.resource or '?', tostring(err)
                        ))
                    end
                end)
            end
        end
    end

    if Config.Dev then
        print(('^3[gs_events]^7 %s: %s'):format(eventDef.Name, json.encode(data, { indent = true })))
    end
end

local function ProcessEventGroup(groupId)
    local size = GetNumberOfEvents(groupId)
    if size < 1 then
        return
    end

    for index = 0, size - 1 do
        local eventHash = GetEventAtIndex(groupId, index)
        local eventDef = Registry[eventHash]
        if eventDef and (Listeners[eventDef.Name] or Config.Dev) then
            local buf = AllocateBuffer(eventDef)
            if Citizen.InvokeNative(GET_EVENT_DATA, groupId, index, buf:Buffer(), eventDef.DataSize) then
                DispatchEvent(eventDef, ReadBuffer(eventDef, buf))
            elseif Config.Dev then
                print(('^1[gs_events]^7 %s GET_EVENT_DATA failed (size=%d)'):format(
                    eventDef.Name, eventDef.DataSize
                ))
            end
        end
    end
end

local function StartGroupThread(groupId)
    if GroupThreadsStarted[groupId] then
        return
    end

    GroupThreadsStarted[groupId] = true

    CreateThread(function()
        while true do
            if GroupListenerCount[groupId] > 0 or Config.Dev then
                ProcessEventGroup(groupId)
                Wait(0)
            else
                Wait(500)
            end
        end
    end)
end

local function GetRegistryEntry(eventName)
    if type(eventName) ~= 'string' or eventName == '' then
        return nil
    end

    return Registry[joaat(eventName)]
end

-- Cross-resource export args arrive as CFX function refs (tables), not Lua functions.
local function IsCallback(value)
    local valueType = type(value)
    if valueType == 'function' then
        return true
    end
    return valueType == 'table' and rawget(value, '__cfx_functionReference') ~= nil
end

-- Support both exports.gs_events.ListenTo(...) and exports.gs_events:ListenTo(...)
local function NormalizeExportArgs(a, b, c)
    if type(a) == 'table' and not IsCallback(a) and type(b) == 'string' then
        return b, c
    end
    return a, b
end

local function ListenTo(a, b, c)
    local eventName, callback = NormalizeExportArgs(a, b, c)

    if not IsCallback(callback) then
        error('gs_events ListenTo: callback must be a function', 2)
    end

    local eventDef = GetRegistryEntry(eventName)
    if not eventDef then
        error(('gs_events ListenTo: unknown event %q'):format(tostring(eventName)), 2)
    end

    local groupId = eventDef.EventGroup
    local listenerId = NextListenerId
    NextListenerId = NextListenerId + 1

    local hook = {
        id = listenerId,
        callback = callback,
        resource = GetInvokingResource(),
    }

    if not Listeners[eventName] then
        Listeners[eventName] = {}
        GroupListenerCount[groupId] = GroupListenerCount[groupId] + 1
    end

    Listeners[eventName][#Listeners[eventName] + 1] = hook
    ListenersById[listenerId] = {
        eventName = eventName,
        groupId = groupId,
        index = #Listeners[eventName],
    }

    StartGroupThread(groupId)

    return listenerId
end

local function RemoveListener(a, b)
    local listenerId = select(1, NormalizeExportArgs(a, b))
    local meta = ListenersById[listenerId]
    if not meta then
        return false
    end

    local eventName = meta.eventName
    local hooks = Listeners[eventName]
    if not hooks then
        ListenersById[listenerId] = nil
        return false
    end

    local kept = {}
    for i = 1, #hooks do
        local hook = hooks[i]
        if hook.id ~= listenerId then
            kept[#kept + 1] = hook
        end
    end

    if #kept == 0 then
        Listeners[eventName] = nil
        GroupListenerCount[meta.groupId] = GroupListenerCount[meta.groupId] - 1
    else
        Listeners[eventName] = kept
        for i = 1, #kept do
            ListenersById[kept[i].id].index = i
        end
    end

    ListenersById[listenerId] = nil
    return true
end

local function RemoveResourceListeners(resourceName)
    local toRemove = {}

    for listenerId, meta in pairs(ListenersById) do
        local hook = Listeners[meta.eventName]?[meta.index]
        if hook and hook.resource == resourceName then
            toRemove[#toRemove + 1] = listenerId
        end
    end

    for i = 1, #toRemove do
        RemoveListener(toRemove[i])
    end
end

BuildRegistry()

if Config.Dev then
    for groupId = 0, 3 do
        StartGroupThread(groupId)
    end
end

AddEventHandler('onResourceStop', function(resourceName)
    if resourceName == GetCurrentResourceName() then
        return
    end

    RemoveResourceListeners(resourceName)
end)

exports('ListenTo', ListenTo)
exports('RemoveListener', RemoveListener)
