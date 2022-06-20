# Mark the current player
tag @s add pk_current_player

# Execute as the marker (to be able to run as and at @s in unloaded chunks)
summon marker ~ ~ ~ {Tags:["pk_current_player_spawnpoint"]}
execute as @e[type=marker,tag=pk_current_player_spawnpoint,distance=..0.1] run function pk_enhanced_adventure_core:items/teleportation_potion/helpers/player_spawnpoint/place_marker
# Remove the current tag
tag @s remove pk_current_player