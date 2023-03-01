# summon the temporary entity
execute as @e[type=marker,tag=pk_current_marker,distance=..10] at @s run summon marker ^ ^ ^1 {Tags:["pk_direction"]}

# Store coordinates for math
data modify storage pk_enhanced_adventure:data Temp.Entity.Pos set from entity @e[type=marker,tag=pk_current_marker,distance=..10,limit=1] Pos
execute store result score %pk_entity_x pk.common.value run data get storage pk_enhanced_adventure:data Temp.Entity.Pos[0] 1000
execute store result score %pk_entity_y pk.common.value run data get storage pk_enhanced_adventure:data Temp.Entity.Pos[1] 1000
execute store result score %pk_entity_z pk.common.value run data get storage pk_enhanced_adventure:data Temp.Entity.Pos[2] 1000
data modify storage pk_enhanced_adventure:data Temp.Entity.Pos set from entity @e[type=marker,tag=pk_direction,distance=..10,limit=1] Pos
execute store result score %pk_target_x pk.common.value run data get storage pk_enhanced_adventure:data Temp.Entity.Pos[0] 1000
execute store result score %pk_target_y pk.common.value run data get storage pk_enhanced_adventure:data Temp.Entity.Pos[1] 1000
execute store result score %pk_target_z pk.common.value run data get storage pk_enhanced_adventure:data Temp.Entity.Pos[2] 1000

# Do the math
scoreboard players operation %pk_target_x pk.common.value -= %pk_entity_x pk.common.value
scoreboard players operation %pk_target_y pk.common.value -= %pk_entity_y pk.common.value
scoreboard players operation %pk_target_z pk.common.value -= %pk_entity_z pk.common.value

# Applying motion
execute store result entity @s Motion[0] double 0.002 run scoreboard players get %pk_target_x pk.common.value
#execute store result entity @s Motion[1] double 0.002 run scoreboard players get %pk_target_y pk.common.value
execute store result entity @s Motion[2] double 0.002 run scoreboard players get %pk_target_z pk.common.value

# Remove marker
kill @e[type=marker,tag=pk_direction,distance=..10]