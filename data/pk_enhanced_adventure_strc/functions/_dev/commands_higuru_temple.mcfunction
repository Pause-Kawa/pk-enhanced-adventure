# Higuru Temple Main Entrance Marker
execute align xyz run summon marker ~0.5 ~ ~0.5 {Tags:["pk_enhanced_adventure_strc_marker","pk_higuru_temple_marker","pk_main_entrance"]}

# Loot tables
give @s dispenser{BlockEntityTag:{LootTable:"pk_enhanced_adventure_strc:chests/higuru_temple/dispenser_trap"}}
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
give @s command_block{BlockEntityTag:{Command:"function pk_enhanced_adventure_strc:structures/higuru_temple/mechanics/urn/place"}} 1




# Underground 1 : Second room
execute align xyz run summon marker ~0.5 ~ ~0.5 {Tags:["pk_enhanced_adventure_strc_marker","pk_common_marker","pk_fight_trigger"],data:{TriggerDistance:2,TriggerValue:1}}
# - Default fight
execute align xyz run summon marker ~0.5 ~ ~0.5 {Tags:["pk_enhanced_adventure_strc_marker","pk_common_marker","pk_fight_engine"],data:{Entities:[{Type:"higuru_skeleton_random"}],Reinforcing:[{Type:"higuru_skeleton_random"}],ReinforcingMax:3,SpawnAnimations:[{Particles:"soul_fire_flame"},{Sound:"entity.evoker.cast_spell"}],OnStart:{Events:[{Name:"higuru_temple_statue_lever_mouth_close"}]},OnStop:{Events:[{Name:"higuru_temple_statue_lever_mouth_open"}]},OnReset:{},Resetable:1b,TriggerValue:1}}
# - Hard fight
execute align xyz run summon marker ~0.5 ~ ~0.5 {Tags:["pk_enhanced_adventure_strc_marker","pk_common_marker","pk_fight_engine"],data:{Entities:[{Type:"higuru_skeleton_random"},{Type:"higuru_skeleton_random"},{Type:"cave_spider"}],Reinforcing:[{Type:"higuru_skeleton_random"}],ReinforcingMax:3,SpawnAnimations:[{Particles:"soul_fire_flame"},{Sound:"entity.evoker.cast_spell"}],OnStart:{Events:[{Name:"higuru_temple_statue_lever_mouth_close"}]},OnStop:{Events:[{Name:"higuru_temple_statue_lever_mouth_open"}]},OnReset:{},Resetable:1b,TriggerValue:1}}


# Ancient Altar Decoration Entities
# North : -Z / East : +X
execute align xyz run summon falling_block ~0.500 ~0.999 ~0.501 {Tags:["pk_enhanced_adventure_ancient_altar_decoration","pk_enhanced_adventure_falling_block"],BlockState:{Name:"minecraft:polished_basalt",Properties:{"axis":"z"}},NoGravity:1b,Time:-2147483648,Invulnerable:1b}
execute align xyz run summon falling_block ~0.500 ~0.999 ~0.499 {Tags:["pk_enhanced_adventure_ancient_altar_decoration","pk_enhanced_adventure_falling_block"],BlockState:{Name:"minecraft:polished_basalt",Properties:{"axis":"z"}},NoGravity:1b,Time:-2147483648,Invulnerable:1b}
execute align xyz run summon falling_block ~0.499 ~1.001 ~0.500 {Tags:["pk_enhanced_adventure_ancient_altar_decoration","pk_enhanced_adventure_falling_block"],BlockState:{Name:"minecraft:polished_basalt",Properties:{"axis":"x"}},NoGravity:1b,Time:-2147483648,Invulnerable:1b}
execute align xyz run summon falling_block ~0.501 ~1.001 ~0.500 {Tags:["pk_enhanced_adventure_ancient_altar_decoration","pk_enhanced_adventure_falling_block"],BlockState:{Name:"minecraft:polished_basalt",Properties:{"axis":"x"}},NoGravity:1b,Time:-2147483648,Invulnerable:1b}