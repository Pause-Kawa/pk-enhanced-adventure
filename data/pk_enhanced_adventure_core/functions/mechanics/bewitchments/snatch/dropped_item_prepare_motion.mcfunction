function pk_enhanced_adventure_core:helpers/random/uniform_0_1000

# Summon the temporary entity
execute if score $out pk.enhanced_adventure.random matches ..500 rotated as @p[tag=pk_current_player,distance=..16] run summon marker ^-1 ^0.85 ^0.45 {Tags:["pk_direction"]}
execute if score $out pk.enhanced_adventure.random matches 501.. rotated as @p[tag=pk_current_player,distance=..16] run summon marker ^1 ^0.85 ^0.45 {Tags:["pk_direction"]}

# Store coordinates for math
data modify storage pk_enhanced_adventure:data Temp.Entity.Pos set from entity @s Pos
execute store result score %pk_entity_x pk.common.value run data get storage pk_enhanced_adventure:data Temp.Entity.Pos[0] 1000
execute store result score %pk_entity_y pk.common.value run data get storage pk_enhanced_adventure:data Temp.Entity.Pos[1] 1000
execute store result score %pk_entity_z pk.common.value run data get storage pk_enhanced_adventure:data Temp.Entity.Pos[2] 1000
data modify storage pk_enhanced_adventure:data Temp.Entity.Pos set from entity @e[type=marker,tag=pk_direction,limit=1,distance=..10] Pos
execute store result score %pk_target_x pk.common.value run data get storage pk_enhanced_adventure:data Temp.Entity.Pos[0] 1000
execute store result score %pk_target_y pk.common.value run data get storage pk_enhanced_adventure:data Temp.Entity.Pos[1] 1000
execute store result score %pk_target_z pk.common.value run data get storage pk_enhanced_adventure:data Temp.Entity.Pos[2] 1000

# Do the math
scoreboard players operation %pk_target_x pk.common.value -= %pk_entity_x pk.common.value
scoreboard players operation %pk_target_y pk.common.value -= %pk_entity_y pk.common.value
scoreboard players operation %pk_target_z pk.common.value -= %pk_entity_z pk.common.value

# Applying motion, excluding vertical one 
data modify storage pk_enhanced_adventure:data Temp.Entity.Motion set value [0d,0d,0d]
execute store result storage pk_enhanced_adventure:data Temp.Entity.Motion[0] double 0.0002 run scoreboard players get %pk_target_x pk.common.value
execute store result storage pk_enhanced_adventure:data Temp.Entity.Motion[1] double 0.0002 run scoreboard players get %pk_target_y pk.common.value
execute store result storage pk_enhanced_adventure:data Temp.Entity.Motion[2] double 0.0002 run scoreboard players get %pk_target_z pk.common.value
data modify entity @s Motion set from storage pk_enhanced_adventure:data Temp.Entity.Motion

# Remove the relative tag
tag @s remove pk_current_item

# Remove marker
kill @e[tag=pk_direction]