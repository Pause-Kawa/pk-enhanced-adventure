# Higuru Temple Main Entrance Marker
execute align xyz run summon marker ~0.5 ~ ~0.5 {Tags:["pk_enhanced_adventure_strc_marker","pk_higuru_temple_marker","pk_main_entrance"]}

# Loot tables
give @s dispenser{BlockEntityTag:{LootTable:"pk_enhanced_adventure_strc:chests/higuru_temple/dispenser_trap"}}
give @s chest{BlockEntityTag:{LootTable:"pk_enhanced_adventure_strc:chests/higuru_temple/rare_treasure"}}
give @s trapped_chest{BlockEntityTag:{LootTable:"pk_enhanced_adventure_strc:chests/higuru_temple/rare_treasure"}}

# Inner door
execute align xyz run summon marker ~0.5 ~ ~0.5 {Tags:["pk_enhanced_adventure_strc_marker","pk_higuru_temple_marker","pk_inner_door"],data:{TriggerValue:1}}
# Statue lever
execute align xyz run summon marker ~0.5 ~ ~0.5 {Tags:["pk_enhanced_adventure_strc_marker","pk_higuru_temple_marker","pk_lever"],data:{TriggerValue:1}}
# Trap
give @s dispenser{BlockEntityTag:{LootTable:"pk_enhanced_adventure_strc:chests/higuru_temple/dispenser_trap"},BlockStateTag:{facing:"down"}} 1
# Urn
give @s command_block{BlockEntityTag:{Command:"function pk_enhanced_adventure_strc:structures/higuru_temple/mechanics/urn/place"}} 1

# Underground 1 : Second room
execute align xyz run summon marker ~0.5 ~ ~0.5 {Tags:["pk_enhanced_adventure_strc_marker","pk_common_marker","pk_fight_trigger"],data:{TriggerDistance:2,TriggerValue:1}}
execute align xyz run summon marker ~0.5 ~ ~0.5 {Tags:["pk_enhanced_adventure_strc_marker","pk_common_marker","pk_fight_engine"],data:{Entities:[{Type:"higuru_skeleton_random"}],Reinforcing:[{Type:"higuru_skeleton_random"}],ReinforcingMax:3,SpawnAnimations:[{Particles:"soul_fire_flame"},{Sound:"entity.evoker.cast_spell"}],OnStart:{Events:[{Name:"higuru_temple_statue_lever_mouth_close"}]},OnStop:{Events:[{Name:"higuru_temple_statue_lever_mouth_open"}]},OnReset:{},Resetable:1b,TriggerValue:1}}

data modify storage pk_enhanced_adventure Temp.Entities set value [{Type:"vindicator"},{Type:"vindicator"},{Type:"vindicator"},{Type:"vindicator"},{Type:"vindicator"},{Type:"vindicator"},{Type:"vindicator"},{Type:"vindicator"},{Type:"vindicator"},{Type:"vindicator"}]