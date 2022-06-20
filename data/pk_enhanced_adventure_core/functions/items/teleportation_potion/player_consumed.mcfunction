# Revoke advancement
advancement revoke @s only pk_enhanced_adventure_core:consumables/teleportation_potion

# Store data from player
data modify storage pk_enhanced_adventure:data Temp.Entity set from entity @s

# Init consumption fail score
scoreboard players set %pk_teleported_successfully pk.common.value 0
scoreboard players set %pk_player_spawnpoint_fail pk.common.value 0

# If player has saved a memorized point from a Memorial Excerpt
execute if entity @s[scores={pk.enhanced_adventure.memorized.dimension=-1..},predicate=!pk_enhanced_adventure_core:gameplay/teleportation_potion/in_blacklisted_dimension] run function pk_enhanced_adventure_core:items/teleportation_potion/helpers/memorized_point/initialize

# Else if player has a spawnpoint from bed or anchor
execute if score %pk_teleported_successfully pk.common.value matches 0 if data storage pk_enhanced_adventure:data Temp.Entity.SpawnY if entity @s[predicate=!pk_enhanced_adventure_core:gameplay/teleportation_potion/in_blacklisted_dimension] run function pk_enhanced_adventure_core:items/teleportation_potion/helpers/player_spawnpoint/initialize

# Else teleport to the world's spawn point
execute if score %pk_teleported_successfully pk.common.value matches 0 if entity @s[predicate=!pk_enhanced_adventure_core:gameplay/teleportation_potion/in_blacklisted_dimension] run function pk_enhanced_adventure_core:items/teleportation_potion/helpers/world_spawnpoint/initialize

# If in blacklisted dimension, fails
execute if score %pk_teleported_successfully pk.common.value matches 0 run function pk_enhanced_adventure_core:items/teleportation_potion/helpers/fail