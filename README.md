# gs_events

Client event queue helper for RedM. Register only the events you care about; the resource polls those queues and runs your callbacks without blocking the poll loop.

```lua
local listenerId = exports.gs_events:ListenTo('EVENT_ENTITY_DAMAGED', function(data)
    local entity     = data[1] -- damaged entity id
    local fromEntity = data[2] -- object (or ped id) that caused damage to the entity
    local weapon     = data[3] -- weaponHash that damaged the entity
    local ammo       = data[4] -- ammo hash that damaged the entity
    local damage     = data[5] -- (float) damage amount
    local x          = data[7] -- (float) entity coord x
    local y          = data[8] -- (float) entity coord y
    local z          = data[9] -- (float) entity coord z

    -- other logic
end)

-- optional
exports.gs_events:RemoveListener(listenerId)
```

Listeners are removed automatically when the registering resource stops.

Set `Config.Dev = true` to log registered event payloads when they fire.

Known event args: https://github.com/femga/rdr3_discoveries/blob/master/AI/EVENTS/README.md

## Credit

Gottfriedleibniz dataview: https://github.com/femga/rdr3_discoveries/blob/master/AI/EVENTS/dataview_by_Gottfriedleibniz.lua
