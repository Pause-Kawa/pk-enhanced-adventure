# Spawn the current entity
data modify storage pk_enhanced_adventure:data Temp.Entity set from storage pk_enhanced_adventure:data Temp.RecursiveSpawnEntities[0]
function pk_enhanced_adventure_strc:common_structures/mechanics/common_engines/summon_entity
data remove storage pk_enhanced_adventure:data Temp.RecursiveSpawnEntities[0]
# Recursively spawn the entities
scoreboard players remove %pk_recursive_spawn_entities_length pk.common.value 1
execute if score %pk_recursive_spawn_entities_length pk.common.value matches 1.. run function pk_enhanced_adventure_strc:common_structures/mechanics/common_engines/summon_patterns/default_recursive