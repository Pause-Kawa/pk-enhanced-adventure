# Clone entities in storage
data modify storage pk_enhanced_adventure:data Temp.RecursiveSpawnEntities set value []
data modify storage pk_enhanced_adventure:data Temp.RecursiveSpawnEntities set from storage pk_enhanced_adventure:data Temp.Entities
# Get entities array length
scoreboard players set %pk_recursive_spawn_entities_length pk.common.value 0
execute store result score %pk_recursive_spawn_entities_length pk.common.value run data get storage pk_enhanced_adventure:data Temp.RecursiveSpawnEntities
# Recursively spawn the entities
execute if score %pk_recursive_spawn_entities_length pk.common.value matches 1.. run function pk_enhanced_adventure_strc:common_structures/mechanics/common_engines/summon_patterns/default_recursive
# Apply motion to entities
execute as @e[type=#pk_enhanced_adventure_core:mobs,distance=..0.1] run data modify entity @s Motion set value [0.0d,0.0d,0.1d]