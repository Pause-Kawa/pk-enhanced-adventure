# Mark the current player
tag @s add pk_current_player

# Store player memorized point in storage
data modify storage pk_enhanced_adventure:data Temp.MemorizedPoint set value {Pos:[0d,0d,0d]}
scoreboard players operation %pk_memorized_point_dimension pk.common.value = @s pk.enhanced_adventure.memorized.dimension
execute store result storage pk_enhanced_adventure:data Temp.MemorizedPoint.Pos[0] double 1 run scoreboard players get @s pk.enhanced_adventure.memorized.pos.x
execute store result storage pk_enhanced_adventure:data Temp.MemorizedPoint.Pos[1] double 1 run scoreboard players get @s pk.enhanced_adventure.memorized.pos.y
execute store result storage pk_enhanced_adventure:data Temp.MemorizedPoint.Pos[2] double 1 run scoreboard players get @s pk.enhanced_adventure.memorized.pos.z

# Execute as the marker (to be able to run as and at @s in unloaded chunks)
summon marker ~ ~ ~ {Tags:["pk_current_memorized_point"]}
execute as @e[type=marker,tag=pk_current_memorized_point,limit=1,distance=..0.1] run function pk_enhanced_adventure_core:items/teleportation_potion/helpers/memorized_point/teleport

# Remove the current tag
tag @s remove pk_current_player