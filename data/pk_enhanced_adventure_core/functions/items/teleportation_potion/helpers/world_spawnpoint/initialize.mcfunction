# Set the "teleport successfully" score
scoreboard players set %pk_teleported_successfully pk.common.value 1

# If the bed was not found in the previous bed spawnpoint check
execute if score %pk_player_spawnpoint_fail pk.common.value matches 1 run tellraw @s {"text":"You have no memorized point, home bed or respawn anchor"}

# Teleport to world spawnpoint (need to use a scheduled function to reset the context of location)
tag @s add pk_waiting_to_be_teleported_at_world_spawnpoint
schedule function pk_enhanced_adventure_core:items/teleportation_potion/helpers/world_spawnpoint/teleport 1t