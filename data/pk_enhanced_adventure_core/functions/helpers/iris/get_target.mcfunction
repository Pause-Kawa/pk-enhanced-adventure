# Reset tags, scores and storage
kill @e[type=minecraft:marker,tag=pk.iris.ray]
data remove storage pk_enhanced_adventure:iris.output Distance
data remove storage pk_enhanced_adventure:iris.output TargetedBlock
data remove storage pk_enhanced_adventure:iris.output ContactCoordinates
data remove storage pk_enhanced_adventure:iris.output PlacingPosition
scoreboard players set $depth iris 0
scoreboard players set $total_distance iris 0
scoreboard players set $ray_hits_block iris 0

# Get coordinates and rotation of the initial position
function pk_enhanced_adventure_core:helpers/iris/get_coordinates/main
summon minecraft:marker ~ ~ ~ {Tags:["pk.iris","pk.iris.ray"]}

# Start the loop
tag @s add pk.iris.executing
execute store result score $max_depth iris run data get storage pk_enhanced_adventure:iris.input MaxRecursionDepth
execute as @e[type=minecraft:marker,tag=pk.iris.ray] at @s run function pk_enhanced_adventure_core:helpers/iris/raycast/loop
tag @s remove pk.iris.executing