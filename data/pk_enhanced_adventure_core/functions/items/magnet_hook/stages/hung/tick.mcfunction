# Search the relative latch point
scoreboard players operation %pk_temp pk.common.value = @s pk.enhanced_adventure.magnet_hook.id
tag @e[type=marker,tag=pk_magnet_hook_latch_point,tag=pk_reached,distance=..5,predicate=pk_enhanced_adventure_core:gameplay/magnet_hook/id_matching] add pk_current_magnet_hook_latch_point

# Teleport player to latch point every two ticks
# This delay is useful for servers that can't refresh the client position fast enough to allow it to place blocks when hanging
execute if entity @s[scores={pk.enhanced_adventure.magnet_hook.tp_delay=2..}] at @e[type=marker,tag=pk_current_magnet_hook_latch_point,tag=pk_reached,distance=..5] run function pk_enhanced_adventure_core:items/magnet_hook/stages/hung/stabilise
scoreboard players add @s pk.enhanced_adventure.magnet_hook.tp_delay 1

# Add hanging effects
effect give @s levitation 1 255 true
effect give @s haste 1 2 true

# Force the player to land
# - If no latch point was found (can happen if the latch point is removed with commands) or the latch point has not at least one solid block around it anymore
execute unless entity @e[type=marker,tag=pk_current_magnet_hook_latch_point,tag=pk_reached,predicate=pk_enhanced_adventure_core:gameplay/magnet_hook/has_solid_block_to_hang_on,distance=..5] run function pk_enhanced_adventure_core:items/magnet_hook/stages/hung/land
# - If the player doesn't hold the Magnet Hook in an hand anymore
execute unless entity @s[predicate=pk_enhanced_adventure_core:hold/magnet_hook/in_any_hand] run function pk_enhanced_adventure_core:items/magnet_hook/stages/hung/land
# - If the player is sneaking
execute if entity @s[predicate=pk_enhanced_adventure_core:flags/is_sneaking] run function pk_enhanced_adventure_core:items/magnet_hook/stages/hung/land

# Remove the latch point relative tag
tag @e[type=marker,tag=pk_current_magnet_hook_latch_point,distance=..5] remove pk_current_magnet_hook_latch_point

# _DEV : Climb
# execute if entity @s[x_rotation=23..51] anchored eyes positioned ^ ^ ^0.8 if block ~ ~ ~ #pk_enhanced_adventure_core:magnet_hook_traversable align xyz unless block ~ ~-1 ~ #pk_enhanced_adventure_core:magnet_hook_traversable if block ~ ~1 ~ #pk_enhanced_adventure_core:magnet_hook_traversable run playsound block.note_block.hat ambient @a ~ ~ ~ 1 1