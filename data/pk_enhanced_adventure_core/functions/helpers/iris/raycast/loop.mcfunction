# Loops forward until a contact surface is found or until the maximum recursion depth has been reached

# See if there is a non transparent block or an entity at the current position
# @FORK_EDIT: Check for desired blocks
execute if data storage pk_enhanced_adventure:iris.input {Search:"ancient_altar"} at @s if block ~ ~ ~ barrel{CustomName:'{"italic":false,"text":"Ancient Altar§r"}'} run scoreboard players set $ray_hits_block iris 1

# If the ray hit something, break the loop and return relevant information
execute if score $ray_hits_block iris matches 1 run function pk_enhanced_adventure_core:helpers/iris/raycast/hit_block

# Otherwise, proceed to the next block
execute unless score $ray_hits_block iris matches 1 run function pk_enhanced_adventure_core:helpers/iris/find_next_block/main
execute unless score $ray_hits_block iris matches 1 run function pk_enhanced_adventure_core:helpers/iris/raycast/teleport_marker

# Loop this function, if the maximum recursion depth has not been reached yet
scoreboard players add $depth iris 1
execute if score $depth iris < $max_depth iris at @s run function pk_enhanced_adventure_core:helpers/iris/raycast/loop
execute if score $depth iris = $max_depth iris run scoreboard players reset $total_distance iris