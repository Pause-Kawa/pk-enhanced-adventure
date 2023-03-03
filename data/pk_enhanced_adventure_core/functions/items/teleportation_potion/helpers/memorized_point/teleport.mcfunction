# Set the "teleport successfully" score
scoreboard players set %pk_teleported_successfully pk.common.value 1

# Set the marker position
data modify entity @s Pos set from storage pk_enhanced_adventure:data Temp.MemorizedPoint.Pos

# Teleport the potion consumer
tp @p[tag=pk_current_player] @s
execute if score %pk_memorized_point_dimension pk.common.value matches 0 as @p[tag=pk_current_player] at @s in minecraft:overworld positioned as @s run tp @s ~ ~ ~
execute if score %pk_memorized_point_dimension pk.common.value matches -1 as @p[tag=pk_current_player] at @s in minecraft:the_nether positioned as @s run tp @s ~ ~ ~
execute if score %pk_memorized_point_dimension pk.common.value matches 1 as @p[tag=pk_current_player] at @s in minecraft:the_end positioned as @s run tp @s ~ ~ ~

# Run teleportation events on the player
tag @p[tag=pk_current_player] add pk_waiting_for_teleport_potion_events
schedule function pk_enhanced_adventure_core:items/teleportation_potion/helpers/after_teleportation_schedule 1t

# Remove current marker
kill @s