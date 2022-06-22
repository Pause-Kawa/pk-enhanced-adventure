# Search the relative latch point
scoreboard players operation %pk_temp pk.common.value = @s pk.enhanced_adventure.magnet_hook.id
execute as @e[type=marker,tag=pk_magnet_hook_latch_point,tag=!pk_reached,distance=..32] if score %pk_temp pk.common.value = @s pk.enhanced_adventure.magnet_hook.id run tag @s add pk_current_magnet_hook_latch_point

# Teleport player toward its relative latch point
execute facing entity @e[type=marker,tag=pk_current_magnet_hook_latch_point,limit=1,distance=..32] feet run tp @s ^ ^ ^1

# Animations
execute if entity @s[tag=!pk_magnet_hook_pulled_start_animations] run function pk_enhanced_adventure_core:items/magnet_hook/stages/pull/start_animations

# If the latch point is close enough make the player hanging
execute if entity @e[type=marker,tag=pk_current_magnet_hook_latch_point,limit=1,distance=..2] run function pk_enhanced_adventure_core:items/magnet_hook/stages/pull/reached_latch_point

# Remove the latch point relative tag
tag @e[type=marker,tag=pk_current_magnet_hook_latch_point,distance=..32] remove pk_current_magnet_hook_latch_point