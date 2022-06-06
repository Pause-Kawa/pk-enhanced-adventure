# Dev
execute at @e[type=marker] run particle soul_fire_flame ~ ~ ~ 0 0 0 0 1 normal @a[tag=pk_dev]

# ----------------------------------------
# Entities
# ----------------------------------------

# All
team join PKHiddenName @e[type=#pk_enhanced_adventure_core:mobs,tag=pk_hidden_name,team=!PKHiddenName]
execute as @e[type=#pk_enhanced_adventure_core:mobs,tag=pk_entity_fire_resistant] run data modify entity @s Fire set value 0s
# Item
execute as @e[type=item,tag=!pk_enhanced_adventure_checked] at @s run function pk_enhanced_adventure_core:entities/item/initialize
# Higuru Skeleton
execute as @e[type=skeleton,tag=pk_higuru_skeleton] at @s run function pk_enhanced_adventure_core:entities/higuru_skeleton/behavior/tick