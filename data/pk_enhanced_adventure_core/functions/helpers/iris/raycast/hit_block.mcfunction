# Runs when the ray hits a solid block surface and outputs all available information to storage

# Targeted block
data modify storage pk_enhanced_adventure:iris.output TargetedBlock set value [0, 0, 0]
execute store result storage pk_enhanced_adventure:iris.output TargetedBlock[0] int 1 run scoreboard players get $[x] iris
execute store result storage pk_enhanced_adventure:iris.output TargetedBlock[1] int 1 run scoreboard players get $[y] iris
execute store result storage pk_enhanced_adventure:iris.output TargetedBlock[2] int 1 run scoreboard players get $[z] iris

# Placing position
data modify storage pk_enhanced_adventure:iris.output PlacingPosition set value [0, 0, 0]
execute store result storage pk_enhanced_adventure:iris.output PlacingPosition[0] int 1 run scoreboard players get $previous_[x] iris
execute store result storage pk_enhanced_adventure:iris.output PlacingPosition[1] int 1 run scoreboard players get $previous_[y] iris
execute store result storage pk_enhanced_adventure:iris.output PlacingPosition[2] int 1 run scoreboard players get $previous_[z] iris

# Contact coordinates
data modify storage pk_enhanced_adventure:iris.output ContactCoordinates set value [0.0d, 0.0d, 0.0d]
execute store result storage pk_enhanced_adventure:iris.output ContactCoordinates[0] double 0.000001 run scoreboard players get $targeted_x iris
execute store result storage pk_enhanced_adventure:iris.output ContactCoordinates[1] double 0.000001 run scoreboard players get $targeted_y iris
execute store result storage pk_enhanced_adventure:iris.output ContactCoordinates[2] double 0.000001 run scoreboard players get $targeted_z iris
scoreboard players operation ${x} iris = $targeted_x iris
scoreboard players operation ${y} iris = $targeted_y iris
scoreboard players operation ${z} iris = $targeted_z iris

# Mark as block found
tag @s add pk.iris.ray.found_block

# Exit loop
scoreboard players operation $depth iris = $max_depth iris