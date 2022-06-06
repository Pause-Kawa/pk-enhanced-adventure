# Higuru Temple Main Entrance Marker
execute align xyz run summon marker ~0.5 ~ ~0.5 {Tags:["pk_enhanced_adventure_strc_marker","pk_higuru_temple_marker","pk_main_entrance"]}

# Loot tables
give @s dispenser{BlockEntityTag:{LootTable:"pk_enhanced_adventure_strc:chests/higuru_temple/dispenser_trap"}}
give @s chest{BlockEntityTag:{LootTable:"pk_enhanced_adventure_strc:chests/higuru_temple/rare_treasure"}}
give @s trapped_chest{BlockEntityTag:{LootTable:"pk_enhanced_adventure_strc:chests/higuru_temple/rare_treasure"}}

# Inner door
execute align xyz run summon marker ~0.5 ~ ~0.5 {Tags:["pk_enhanced_adventure_strc_marker","pk_higuru_temple_marker","pk_inner_door"],data:{TriggerValue:0}}
# Statue lever
execute align xyz run summon marker ~0.5 ~ ~0.5 {Tags:["pk_enhanced_adventure_strc_marker","pk_higuru_temple_marker","pk_lever"],data:{TriggerValue:0}}
# Trap
give @s dispenser{BlockEntityTag:{LootTable:"pk_enhanced_adventure_strc:chests/higuru_temple/dispenser_trap"},BlockStateTag:{facing:"down"}} 1
# Urn
give @s command_block{BlockEntityTag:{Command:"function pk_enhanced_adventure_strc:structures/higuru_temple/mechanics/urn/place",powered:1b,auto:1b}} 1