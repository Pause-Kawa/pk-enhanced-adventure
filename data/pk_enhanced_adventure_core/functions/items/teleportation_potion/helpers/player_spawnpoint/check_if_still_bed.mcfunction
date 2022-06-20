# Check if the bed has not been removed or entraved
forceload add ~ ~
execute unless block ~ ~ ~ #minecraft:beds run scoreboard players set %pk_player_spawnpoint_fail pk.common.value 1
execute if score %pk_player_spawnpoint_fail pk.common.value matches 0 as @p[tag=pk_current_player] run function pk_enhanced_adventure_core:items/teleportation_potion/helpers/player_spawnpoint/teleport
forceload remove ~ ~