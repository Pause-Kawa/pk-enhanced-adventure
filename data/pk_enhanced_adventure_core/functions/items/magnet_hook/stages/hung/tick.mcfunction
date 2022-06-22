# Search the relative latch point
scoreboard players operation %pk_temp pk.common.value = @s pk.enhanced_adventure.magnet_hook.id
execute as @e[type=marker,tag=pk_magnet_hook_latch_point,tag=pk_reached,distance=..5] if score %pk_temp pk.common.value = @s pk.enhanced_adventure.magnet_hook.id run tag @s add pk_current_magnet_hook_latch_point

# If no latch point was found, force the player to land (can happen if the latch point is removed with commands)
execute unless entity @e[type=marker,tag=pk_current_magnet_hook_latch_point,tag=pk_reached,distance=..5] run function pk_enhanced_adventure_core:items/magnet_hook/stages/hung/land

# Teleport player to latch point every two ticks
# This delay is useful for servers that can't refresh the client position fast enough to allow it to place blocks when hanging
execute if entity @s[scores={pk.enhanced_adventure.magnet_hook.tp_delay=2..}] at @e[type=marker,tag=pk_current_magnet_hook_latch_point,tag=pk_reached,distance=..5] run function pk_enhanced_adventure_core:items/magnet_hook/stages/hung/tp_to_latch_point
scoreboard players add @s pk.enhanced_adventure.magnet_hook.tp_delay 1

# Add hanging effects
effect give @s levitation 1 255 true
effect give @s haste 1 2 true

# On sneak, free the hanging player
execute if entity @s[predicate=pk_enhanced_adventure_core:flags/is_sneaking] run function pk_enhanced_adventure_core:items/magnet_hook/stages/hung/land

# Remove the latch point relative tag
tag @e[type=marker,tag=pk_current_magnet_hook_latch_point,distance=..5] remove pk_current_magnet_hook_latch_point