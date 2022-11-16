# Higuru Temple Main Entrance Marker
execute align xyz run summon marker ~0.5 ~ ~0.5 {Tags:["pk_enhanced_adventure_strc_marker","pk_higuru_temple_marker","pk_main_entrance"]}

# Loot tables
give @s dispenser{BlockEntityTag:{LootTable:"pk_enhanced_adventure_strc:chests/higuru_temple/dispenser_trap"},BlockStateTag:{facing:"down"}}
give @s chest{BlockEntityTag:{LootTable:"pk_enhanced_adventure_strc:chests/higuru_temple/rare_treasure"}}
give @s chest{BlockEntityTag:{LootTable:"pk_enhanced_adventure_strc:chests/higuru_temple/ancient_tablets_treasure"}}
give @s trapped_chest{BlockEntityTag:{LootTable:"pk_enhanced_adventure_strc:chests/higuru_temple/rare_treasure"}}

# Inner door
execute align xyz run summon marker ~0.5 ~ ~0.5 {Tags:["pk_enhanced_adventure_strc_marker","pk_higuru_temple_marker","pk_inner_door"],data:{TriggerValue:1}}
# Statue lever
execute align xyz run summon marker ~0.5 ~ ~0.5 {Tags:["pk_enhanced_adventure_strc_marker","pk_higuru_temple_marker","pk_lever"],data:{TriggerValue:1}}
# Trap
give @s dispenser{BlockEntityTag:{LootTable:"pk_enhanced_adventure_strc:chests/higuru_temple/dispenser_trap"},BlockStateTag:{facing:"down"}} 1
# Urn
give @s command_block{BlockEntityTag:{Command:"function pk_enhanced_adventure_strc:structures/higuru_temple/mechanics/urn/place_food"}} 1
give @s command_block{BlockEntityTag:{Command:"function pk_enhanced_adventure_strc:structures/higuru_temple/mechanics/urn/place"}} 1


# Underground 1 : First room
# Lever trigger value : 0

# Underground 1 : Second room
# Lever trigger value : 1
execute align xyz run summon marker ~0.5 ~ ~0.5 {Tags:["pk_enhanced_adventure_strc_marker","pk_common_marker","pk_fight_trigger"],data:{TriggerDistance:2,TriggerValue:1}}
# - Default fight
execute align xyz run summon marker ~0.5 ~ ~0.5 {Tags:["pk_enhanced_adventure_strc_marker","pk_common_marker","pk_fight_engine"],data:{Entities:[{Type:"higuru_skeleton_random"}],Reinforcing:[{Type:"higuru_skeleton_random"}],ReinforcingMax:3,SpawnAnimations:[{Particles:"soul_fire_flame"},{Sound:"entity.evoker.cast_spell"}],OnStart:{Events:[{Name:"higuru_temple_statue_lever_mouth_close"}]},OnStop:{Events:[{Name:"higuru_temple_statue_lever_mouth_open"}]},OnReset:{},Resetable:1b,TriggerValue:1}}
# - Hard fight
execute align xyz run summon marker ~0.5 ~ ~0.5 {Tags:["pk_enhanced_adventure_strc_marker","pk_common_marker","pk_fight_engine"],data:{Entities:[{Type:"higuru_skeleton_random"},{Type:"higuru_skeleton_random"},{Type:"cave_spider"}],Reinforcing:[{Type:"higuru_skeleton_random"}],ReinforcingMax:3,SpawnAnimations:[{Particles:"soul_fire_flame"},{Sound:"entity.evoker.cast_spell"}],OnStart:{Events:[{Name:"higuru_temple_statue_lever_mouth_close"}]},OnStop:{Events:[{Name:"higuru_temple_statue_lever_mouth_open"}]},OnReset:{},Resetable:1b,TriggerValue:1}}


# Underground 1 : Large room
# Lever trigger value : 2 - 3
execute align xyz run summon marker ~0.5 ~ ~0.5 {Tags:["pk_enhanced_adventure_strc_marker","pk_common_marker","pk_fight_trigger"],data:{TriggerDistance:1,TriggerValue:2}}
execute align xyz run summon marker ~0.5 ~ ~0.5 {Tags:["pk_enhanced_adventure_strc_marker","pk_common_marker","pk_fight_engine"],data:{Entities:[{Type:"higuru_skeleton_random"}],SpawnAnimations:[{Particles:"soul_fire_flame"},{Sound:"entity.evoker.cast_spell"}],Resetable:1b,TriggerValue:2}}
execute align xyz run summon marker ~0.5 ~ ~0.5 {Tags:["pk_enhanced_adventure_strc_marker","pk_common_marker","pk_fight_trigger"],data:{TriggerDistance:1,TriggerValue:3}}
execute align xyz run summon marker ~0.5 ~ ~0.5 {Tags:["pk_enhanced_adventure_strc_marker","pk_common_marker","pk_fight_engine"],data:{Entities:[{Type:"higuru_skeleton_random"}],SpawnAnimations:[{Particles:"soul_fire_flame"},{Sound:"entity.evoker.cast_spell"}],Resetable:1b,TriggerValue:3}}
# Targets room
execute align xyz run summon marker ~0.5 ~ ~0.5 {Tags:["pk_enhanced_adventure_strc_marker","pk_common_marker","pk_fight_engine"],data:{OnStop:{Events:[{Name:"higuru_temple_statue_lever_mouth_open"}]},TriggerValue:0,NeededActions:2}}


# Underground 1 : Secret room
execute align xyz run summon marker ~0.5 ~ ~0.5 {Tags:["pk_enhanced_adventure_strc_marker","pk_common_marker","pk_fight_trigger"],data:{TriggerDistance:1,TriggerValue:4}}
execute align xyz run summon marker ~0.5 ~ ~0.5 {Tags:["pk_enhanced_adventure_strc_marker","pk_common_marker","pk_fight_engine"],data:{Entities:[{Type:"silverfish"},{Type:"silverfish"},{Type:"silverfish"},{Type:"silverfish"}],SpawnAnimations:[{Particles:"poof"},{Sound:"entity.evoker.cast_spell"}],TriggerValue:4}}
execute align xyz run summon marker ~0.5 ~ ~0.5 {Tags:["pk_enhanced_adventure_strc_marker","pk_common_marker","pk_fight_engine"],data:{Entities:[{Type:"higuru_skeleton_cooker"},{Type:"higuru_skeleton_cooker"}],SpawnAnimations:[{Particles:"soul_fire_flame"},{Sound:"entity.evoker.cast_spell"}],TriggerValue:4}}
summon marker ~ ~ ~ {Tags:["pk_enhanced_adventure_strc_marker","pk_common_marker","pk_spawner_engine"],data:{TriggerDistance:20,Waves:1,WavesDelay:0,WavesReset:0b,MaxAliveEntities:1,Entities:[{Type:"rabbit"}],Resetable:0b}}


# Underground 2 : First corridor
execute align xyz run summon marker ~0.5 ~ ~0.5 {Tags:["pk_enhanced_adventure_strc_marker","pk_higuru_temple_marker","pk_fall_trap_tripwire"]}
execute align xyz run summon marker ~0.5 ~ ~0.5 {Tags:["pk_enhanced_adventure_strc_marker","pk_higuru_temple_marker","pk_fall_trap"]}


# Underground 2 : Large room
# - Statue targets
execute align xyz run summon marker ~0.5 ~ ~0.5 {Tags:["pk_enhanced_adventure_strc_marker","pk_higuru_temple_marker","pk_target_trigger"],data:{TriggerValue:0}}
execute align xyz run summon marker ~0.5 ~ ~0.5 {Tags:["pk_enhanced_adventure_strc_marker","pk_higuru_temple_marker","pk_target_event"],data:{OnStop:{Events:[{Name:"higuru_temple_inner_door_open"}]},TriggerValue:0,NeededActions:2}}
# - Levers pattern
execute align xyz run summon marker ~0.5 ~ ~0.5 {Tags:["pk_enhanced_adventure_strc_marker","pk_higuru_temple_marker","pk_levers_pattern_trigger"],data:{Pattern:1,TriggerValue:0}}
execute align xyz run summon marker ~0.5 ~ ~0.5 {Tags:["pk_enhanced_adventure_strc_marker","pk_higuru_temple_marker","pk_levers_pattern_event"],data:{OnStop:{Events:[{Name:"higuru_temple_inner_door_open"}]},TriggerValue:0}}


# Underground 2 : First room
# Lever trigger value : 5
execute align xyz run summon marker ~0.5 ~ ~0.5 {Tags:["pk_enhanced_adventure_strc_marker","pk_common_marker","pk_fight_trigger"],data:{TriggerDistance:2,TriggerValue:5}}
# - Default fight
execute align xyz run summon marker ~0.5 ~ ~0.5 {Tags:["pk_enhanced_adventure_strc_marker","pk_common_marker","pk_fight_engine"],data:{Entities:[{Type:"higuru_skeleton_random"},{Type:"higuru_skeleton_random"},{Type:"higuru_skeleton_random"},{Type:"higuru_skeleton_random"}],Reinforcing:[{Type:"higuru_skeleton_random"},{Type:"higuru_skeleton_random"}],ReinforcingMax:2,SpawnAnimations:[{Particles:"soul_fire_flame"},{Sound:"entity.evoker.cast_spell"}],OnStart:{Events:[{Name:"higuru_temple_statue_lever_mouth_close"}]},OnStop:{Events:[{Name:"higuru_temple_statue_lever_mouth_open"}]},OnReset:{},Resetable:1b,TriggerValue:5}}
# - Hard fight
execute align xyz run summon marker ~0.5 ~ ~0.5 {Tags:["pk_enhanced_adventure_strc_marker","pk_common_marker","pk_fight_engine"],data:{Entities:[{Type:"higuru_skeleton_random"},{Type:"higuru_skeleton_random"},{Type:"higuru_skeleton_random"},{Type:"higuru_skeleton_random"},{Type:"cave_spider"},{Type:"cave_spider"}],Reinforcing:[{Type:"higuru_skeleton_random"},{Type:"cave_spider"}],ReinforcingMax:3,SpawnAnimations:[{Particles:"soul_fire_flame"},{Sound:"entity.evoker.cast_spell"}],OnStart:{Events:[{Name:"higuru_temple_statue_lever_mouth_close"}]},OnStop:{Events:[{Name:"higuru_temple_statue_lever_mouth_open"}]},OnReset:{},Resetable:1b,TriggerValue:5}}


# Ancient Altar Decoration Entities
# North : -Z / East : +X
execute align xyz run summon falling_block ~0.500 ~0.999 ~0.501 {Tags:["pk_enhanced_adventure_ancient_altar_decoration","pk_enhanced_adventure_falling_block"],BlockState:{Name:"minecraft:polished_basalt",Properties:{"axis":"z"}},NoGravity:1b,Time:-2147483648,Invulnerable:1b}
execute align xyz run summon falling_block ~0.500 ~0.999 ~0.499 {Tags:["pk_enhanced_adventure_ancient_altar_decoration","pk_enhanced_adventure_falling_block"],BlockState:{Name:"minecraft:polished_basalt",Properties:{"axis":"z"}},NoGravity:1b,Time:-2147483648,Invulnerable:1b}
execute align xyz run summon falling_block ~0.499 ~1.001 ~0.500 {Tags:["pk_enhanced_adventure_ancient_altar_decoration","pk_enhanced_adventure_falling_block"],BlockState:{Name:"minecraft:polished_basalt",Properties:{"axis":"x"}},NoGravity:1b,Time:-2147483648,Invulnerable:1b}
execute align xyz run summon falling_block ~0.501 ~1.001 ~0.500 {Tags:["pk_enhanced_adventure_ancient_altar_decoration","pk_enhanced_adventure_falling_block"],BlockState:{Name:"minecraft:polished_basalt",Properties:{"axis":"x"}},NoGravity:1b,Time:-2147483648,Invulnerable:1b}