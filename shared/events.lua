Events = {
    [0] = {
        ['EVENT_BUCKED_OFF'] = {
            EventGroup = 0,
            DataSize = 3
        },
        ['EVENT_CALCULATE_LOOT'] = {
            EventGroup = 0,
            DataSize = 26
        },
        ['EVENT_CALM_PED'] = {
            EventGroup = 0,
            DataSize = 4
        },
        ['EVENT_CARRIABLE_UPDATE_CARRY_STATE'] = {
            EventGroup = 0,
            DataSize = 5
        },
        ['EVENT_CARRIABLE_PROMPT_INFO_REQUEST'] = {
            EventGroup = 0,
            DataSize = 6
        },
        ['EVENT_CARRIABLE_VEHICLE_STOW_START'] = {
            EventGroup = 0,
            DataSize = 5
        },
        ['EVENT_CARRIABLE_VEHICLE_STOW_COMPLETE'] = {
            EventGroup = 0,
            DataSize = 3
        },
        ['EVENT_CHALLENGE_GOAL_COMPLETE'] = {
            EventGroup = 0,
            DataSize = 1
        },
        ['EVENT_CHALLENGE_GOAL_UPDATE'] = {
            EventGroup = 0,
            DataSize = 1
        },
        ['EVENT_CHALLENGE_REWARD'] = {
            EventGroup = 0,
            DataSize = 3
        },
        ['EVENT_CONTAINER_INTERACTION'] = {
            EventGroup = 0,
            DataSize = 4
        },
        ['EVENT_CRIME_CONFIRMED'] = {
            EventGroup = 0,
            DataSize = 3
        },
        ['EVENT_DAILY_CHALLENGE_STREAK_COMPLETED'] = {
            EventGroup = 0,
            DataSize = 1
        },
        ['EVENT_ENTITY_BROKEN'] = {
            EventGroup = 0,
            DataSize = 9,
            -- Slot 4 is ??? damage amount (same layout as DAMAGED/DESTROYED).
            FloatSlots = { [4] = true, [6] = true, [7] = true, [8] = true },
        },
        ['EVENT_ENTITY_DAMAGED'] = {
            EventGroup = 0,
            DataSize = 9,
            FloatSlots = { [4] = true, [6] = true, [7] = true, [8] = true },
        },
        ['EVENT_ENTITY_DESTROYED'] = {
            EventGroup = 0,
            DataSize = 9,
            FloatSlots = { [4] = true, [6] = true, [7] = true, [8] = true },
        },
        ['EVENT_ENTITY_DISARMED'] = {
            EventGroup = 0,
            DataSize = 4
        },
        ['EVENT_ENTITY_EXPLOSION'] = {
            EventGroup = 0,
            DataSize = 6,
            FloatSlots = { [3] = true, [4] = true, [5] = true },
        },
        ['EVENT_ENTITY_HOGTIED'] = {
            EventGroup = 0,
            DataSize = 3
        },
        ['EVENT_HEADSHOT_BLOCKED_BY_HAT'] = {
            EventGroup = 0,
            DataSize = 2
        },
        ['EVENT_HELP_TEXT_REQUEST'] = {
            EventGroup = 0,
            DataSize = 4
        },
        ['EVENT_HITCH_ANIMAL'] = {
            EventGroup = 0,
            DataSize = 4
        },
        ['EVENT_HORSE_BROKEN'] = {
            EventGroup = 0,
            DataSize = 3
        },
        ['EVENT_HOGTIED_ENTITY_PICKED_UP'] = {
            EventGroup = 0,
            DataSize = 2
        },
        ['EVENT_IMPENDING_SAMPLE_PROMPT'] = {
            EventGroup = 0,
            DataSize = 2
        },
        ['EVENT_INVENTORY_ITEM_PICKED_UP'] = {
            EventGroup = 0,
            DataSize = 5
        },
        ['EVENT_INVENTORY_ITEM_REMOVED'] = {
            EventGroup = 0,
            DataSize = 1
        },
        ['EVENT_ITEM_PROMPT_INFO_REQUEST'] = {
            EventGroup = 0,
            DataSize = 2
        },
        ['EVENT_LOOT'] = {
            EventGroup = 0,
            DataSize = 36
        },
        ['EVENT_LOOT_COMPLETE'] = {
            EventGroup = 0,
            DataSize = 3
        },
        ['EVENT_LOOT_PLANT_START'] = {
            EventGroup = 0,
            -- discoveries lists 36; sniff on current build: GET_EVENT_DATA only succeeds at 2
            -- data[1]=behavior?, data[2]=looted entity/hash?
            DataSize = 2
        },
        ['EVENT_LOOT_VALIDATION_FAIL'] = {
            EventGroup = 0,
            DataSize = 2
        },
        ['EVENT_MISS_INTENDED_TARGET'] = {
            EventGroup = 0,
            DataSize = 3
        },
        ['EVENT_MOUNT_OVERSPURRED'] = {
            EventGroup = 0,
            DataSize = 6,
            -- Slot 2 = ??? (float) horse rage amount
            FloatSlots = { [2] = true },
        },
        ['EVENT_OBJECT_INTERACTION'] = {
            EventGroup = 0,
            DataSize = 10
        },
        ['EVENT_PED_ANIMAL_INTERACTION'] = {
            EventGroup = 0,
            DataSize = 3
        },
        ['EVENT_PED_CREATED'] = {
            EventGroup = 0,
            DataSize = 1
        },
        ['EVENT_PED_DESTROYED'] = {
            EventGroup = 0,
            DataSize = 1
        },
        ['EVENT_PED_HAT_KNOCKED_OFF'] = {
            EventGroup = 0,
            DataSize = 2
        },
        ['EVENT_PED_WHISTLE'] = {
            EventGroup = 0,
            DataSize = 2
        },
        ['EVENT_PICKUP_CARRIABLE'] = {
            EventGroup = 0,
            DataSize = 4
        },
        ['EVENT_PLACE_CARRIABLE_ONTO_PARENT'] = {
            EventGroup = 0,
            DataSize = 6
        },
        ['EVENT_PLAYER_COLLECTED_AMBIENT_PICKUP'] = {
            EventGroup = 0,
            DataSize = 8
        },
        ['EVENT_PLAYER_ESCALATED_PED'] = {
            EventGroup = 0,
            DataSize = 2
        },
        ['EVENT_PLAYER_HAT_EQUIPPED'] = {
            EventGroup = 0,
            DataSize = 10
        },
        ['EVENT_PLAYER_HAT_KNOCKED_OFF'] = {
            EventGroup = 0,
            DataSize = 5
        },
        ['EVENT_PLAYER_HORSE_AGITATED_BY_ANIMAL'] = {
            EventGroup = 0,
            DataSize = 4
        },
        ['EVENT_PLAYER_MOUNT_WILD_HORSE'] = {
            EventGroup = 0,
            DataSize = 1
        },
        ['EVENT_PLAYER_PROMPT_TRIGGERED'] = {
            EventGroup = 0,
            DataSize = 10,
            FloatSlots = { [4] = true, [5] = true, [6] = true },
        },
        ['EVENT_RAN_OVER_PED'] = {
            EventGroup = 0,
            DataSize = 2
        },
        ['EVENT_REVIVE_ENTITY'] = {
            EventGroup = 0,
            DataSize = 3
        },
        ['EVENT_SHOCKING_ITEM_STOLEN'] = {
            EventGroup = 0,
            DataSize = 3
        },
        ['EVENT_SHOT_FIRED_BULLET_IMPACT'] = {
            EventGroup = 0,
            DataSize = 1
        },
        ['EVENT_SHOT_FIRED_WHIZZED_BY'] = {
            EventGroup = 0,
            DataSize = 1
        },
        ['EVENT_STAT_VALUE_CHANGED'] = {
            EventGroup = 0,
            DataSize = 2
        },
        ['EVENT_TRIGGERED_ANIMAL_WRITHE'] = {
            EventGroup = 0,
            DataSize = 2
        },
        ['EVENT_VEHICLE_CREATED'] = {
            EventGroup = 0,
            DataSize = 1
        },
        ['EVENT_VEHICLE_DESTROYED'] = {
            EventGroup = 0,
            DataSize = 1
        },
    },
    [1] = {
        ['EVENT_NETWORK_AWARD_CLAIMED'] = {
            EventGroup = 1,
            DataSize = 12
        },
        ['EVENT_NETWORK_BOUNTY_REQUEST_COMPLETE'] = {
            EventGroup = 1,
            DataSize = 7
        },
        ['EVENT_NETWORK_BULLET_IMPACTED_MULTIPLE_PEDS'] = {
            EventGroup = 1,
            DataSize = 4
        },
        ['EVENT_NETWORK_CASHINVENTORY_TRANSACTION'] = {
            EventGroup = 1,
            DataSize = 6
        },
        ['EVENT_NETWORK_CREW_CREATION'] = {
            EventGroup = 1,
            DataSize = 10
        },
        ['EVENT_NETWORK_CREW_DISBANDED'] = {
            EventGroup = 1,
            DataSize = 2
        },
        ['EVENT_NETWORK_CREW_INVITE_RECEIVED'] = {
            EventGroup = 1,
            DataSize = 11
        },
        ['EVENT_NETWORK_CREW_JOINED'] = {
            EventGroup = 1,
            DataSize = 2
        },
        ['EVENT_NETWORK_CREW_KICKED'] = {
            EventGroup = 1,
            DataSize = 2
        },
        ['EVENT_NETWORK_CREW_LEFT'] = {
            EventGroup = 1,
            DataSize = 2
        },
        ['EVENT_NETWORK_CREW_RANK_CHANGE'] = {
            EventGroup = 1,
            DataSize = 7
        },
        ['EVENT_NETWORK_DAMAGE_ENTITY'] = {
            EventGroup = 1,
            DataSize = 32,
            -- Damage / VictimSpeed / DamagerSpeed
            FloatSlots = { [2] = true, [8] = true, [9] = true },
        },
        ['EVENT_NETWORK_GANG'] = {
            EventGroup = 1,
            DataSize = 18
        },
        ['EVENT_NETWORK_GANG_WAYPOINT_CHANGED'] = {
            EventGroup = 1,
            DataSize = 3
        },
        ['EVENT_NETWORK_HOGTIE_BEGIN'] = {
            EventGroup = 1,
            DataSize = 2
        },
        ['EVENT_NETWORK_HOGTIE_END'] = {
            EventGroup = 1,
            DataSize = 2
        },
        ['EVENT_NETWORK_HUB_UPDATE'] = {
            EventGroup = 1,
            DataSize = 1
        },
        ['EVENT_NETWORK_INCAPACITATED_ENTITY'] = {
            EventGroup = 1,
            DataSize = 4,
            -- Damage
            FloatSlots = { [3] = true },
        },
        ['EVENT_NETWORK_LASSO_ATTACH'] = {
            EventGroup = 1,
            DataSize = 2
        },
        ['EVENT_NETWORK_LASSO_DETACH'] = {
            EventGroup = 1,
            DataSize = 2
        },
        ['EVENT_NETWORK_LOOT_CLAIMED'] = {
            EventGroup = 1,
            DataSize = 9
        },
        ['EVENT_NETWORK_MINIGAME_REQUEST_COMPLETE'] = {
            EventGroup = 1,
            DataSize = 6
        },
        ['EVENT_NETWORK_PED_DISARMED'] = {
            EventGroup = 1,
            DataSize = 3
        },
        ['EVENT_NETWORK_PED_HAT_SHOT_OFF'] = {
            EventGroup = 1,
            DataSize = 3
        },
        ['EVENT_NETWORK_PERMISSION_CHECK_RESULT'] = {
            EventGroup = 1,
            DataSize = 2
        },
        ['EVENT_NETWORK_PICKUP_COLLECTION_FAILED'] = {
            EventGroup = 1,
            DataSize = 3
        },
        ['EVENT_NETWORK_PICKUP_RESPAWNED'] = {
            EventGroup = 1,
            DataSize = 2
        },
        ['EVENT_NETWORK_PLAYER_COLLECTED_PICKUP'] = {
            EventGroup = 1,
            DataSize = 8
        },
        ['EVENT_NETWORK_PLAYER_COLLECTED_PORTABLE_PICKUP'] = {
            EventGroup = 1,
            DataSize = 3
        },
        ['EVENT_NETWORK_PLAYER_DROPPED_PORTABLE_PICKUP'] = {
            EventGroup = 1,
            DataSize = 3
        },
        ['EVENT_NETWORK_PLAYER_JOIN_SCRIPT'] = {
            EventGroup = 1,
            DataSize = 41
        },
        ['EVENT_NETWORK_PLAYER_LEFT_SCRIPT'] = {
            EventGroup = 1,
            DataSize = 41
        },
        ['EVENT_NETWORK_PLAYER_JOIN_SESSION'] = {
            EventGroup = 1,
            DataSize = 10
        },
        ['EVENT_NETWORK_PLAYER_LEFT_SESSION'] = {
            EventGroup = 1,
            DataSize = 10
        },
        ['EVENT_NETWORK_PLAYER_MISSED_SHOT'] = {
            EventGroup = 1,
            DataSize = 9
        },
        ['EVENT_NETWORK_POSSE_CREATED'] = {
            EventGroup = 1,
            DataSize = 10
        },
        ['EVENT_NETWORK_POSSE_DATA_CHANGED'] = {
            EventGroup = 1,
            DataSize = 2
        },
        ['EVENT_NETWORK_POSSE_DISBANDED'] = {
            EventGroup = 1,
            DataSize = 2
        },
        ['EVENT_NETWORK_POSSE_EX_ADMIN_DISBANDED'] = {
            EventGroup = 1,
            DataSize = 9
        },
        ['EVENT_NETWORK_POSSE_EX_INACTIVE_DISBANDED'] = {
            EventGroup = 1,
            DataSize = 10
        },
        ['EVENT_NETWORK_POSSE_JOINED'] = {
            EventGroup = 1,
            DataSize = 2
        },
        ['EVENT_NETWORK_POSSE_LEADER_SET_ACTIVE'] = {
            EventGroup = 1,
            DataSize = 23
        },
        ['EVENT_NETWORK_POSSE_LEFT'] = {
            EventGroup = 1,
            DataSize = 1
        },
        ['EVENT_NETWORK_POSSE_MEMBER_DISBANDED'] = {
            EventGroup = 1,
            DataSize = 23
        },
        ['EVENT_NETWORK_POSSE_MEMBER_JOINED'] = {
            EventGroup = 1,
            DataSize = 23
        },
        ['EVENT_NETWORK_POSSE_MEMBER_KICKED'] = {
            EventGroup = 1,
            DataSize = 23
        },
        ['EVENT_NETWORK_POSSE_MEMBER_LEFT'] = {
            EventGroup = 1,
            DataSize = 23
        },
        ['EVENT_NETWORK_POSSE_MEMBER_SET_ACTIVE'] = {
            EventGroup = 1,
            DataSize = 23
        },
        ['EVENT_NETWORK_PROJECTILE_ATTACHED'] = {
            EventGroup = 1,
            DataSize = 6,
            FloatSlots = { [2] = true, [3] = true, [4] = true },
        },
        ['EVENT_NETWORK_PROJECTILE_NO_DAMAGE_IMPACT'] = {
            EventGroup = 1,
            DataSize = 2
        },
        ['EVENT_NETWORK_REVIVED_ENTITY'] = {
            EventGroup = 1,
            DataSize = 2
        },
        ['EVENT_NETWORK_SESSION_EVENT'] = {
            EventGroup = 1,
            DataSize = 10
        },
        ['EVENT_NETWORK_SESSION_MERGE_END'] = {
            EventGroup = 1,
            DataSize = 1
        },
        ['EVENT_NETWORK_SESSION_MERGE_START'] = {
            EventGroup = 1,
            DataSize = 1
        },
        ['EVENT_NETWORK_VEHICLE_LOOTED'] = {
            EventGroup = 1,
            DataSize = 3
        },
        ['EVENT_NETWORK_VEHICLE_UNDRIVABLE'] = {
            EventGroup = 1,
            DataSize = 3
        },
    },
    [2] = {
        ['EVENT_SCENARIO_ADD_PED'] = {
            EventGroup = 2,
            DataSize = 2
        },
        ['EVENT_SCENARIO_DESTROY_PROP'] = {
            EventGroup = 2,
            DataSize = 2
        },
        ['EVENT_SCENARIO_REMOVE_PED'] = {
            EventGroup = 2,
            DataSize = 2
        }
    },
    [3] = {
        ['EVENT_UI_ITEM_INSPECT_ACTIONED'] = {
            EventGroup = 3,
            DataSize = 6
        },
        ['EVENT_UI_QUICK_ITEM_USED'] = {
            EventGroup = 3,
            DataSize = 6
        }
    }
}