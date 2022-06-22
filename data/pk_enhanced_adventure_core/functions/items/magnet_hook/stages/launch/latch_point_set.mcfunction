# Prepare player to be pulled by the magnet hook
tag @s add pk_magnet_hook_pulled
effect give @s levitation 1 255 true

# Summon the latch point
summon marker ~ ~ ~ {Tags:["pk_enhanced_adventure_core_marker","pk_magnet_hook_latch_point","pk_current_entity"]}
execute as @e[type=marker,tag=pk_current_entity,limit=1,distance=..0.1] at @s run function pk_enhanced_adventure_core:items/magnet_hook/stages/launch/latch_point_init

# Animations
playsound minecraft:item.trident.throw ambient @a ~ ~ ~ 1 1.8