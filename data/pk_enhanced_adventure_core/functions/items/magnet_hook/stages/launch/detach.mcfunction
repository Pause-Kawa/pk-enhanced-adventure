# Search the relative latch point
scoreboard players operation %pk_temp pk.common.value = @s pk.enhanced_adventure.magnet_hook.id
tag @e[type=marker,tag=pk_magnet_hook_latch_point,tag=pk_reached,distance=..5,predicate=pk_enhanced_adventure_core:gameplay/magnet_hook/id_matching] add pk_current_magnet_hook_latch_point

# Force the player to land without climbing
tag @s add pk_magnet_hook_no_climb
function pk_enhanced_adventure_core:items/magnet_hook/stages/hung/land
tag @s remove pk_magnet_hook_no_climb

# Remove the latch point relative tag
tag @e[type=marker,tag=pk_current_magnet_hook_latch_point,distance=..5] remove pk_current_magnet_hook_latch_point