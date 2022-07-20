# Initialize the entity data
tag @s[tag=!pk_souls_magnetisation_attracted,nbt={NoGravity:1b}] add pk_no_gravity
data modify entity @s[tag=!pk_souls_magnetisation_attracted] NoGravity set value 1b
tag @s add pk_souls_magnetisation_attracted

# Rotate entity
tp @s ~ ~ ~ facing entity @p[tag=pk_current_player,distance=..7] feet

# Summon the temporary entity
summon marker ^ ^ ^1 {Tags:["pk_direction"]}

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
execute store result storage pk_enhanced_adventure:data Temp.Entity.Motion[0] double 0.00005 run scoreboard players get %pk_target_x pk.common.value
execute if block ~ ~ ~ #pk_enhanced_adventure_core:liquids store result storage pk_enhanced_adventure:data Temp.Entity.Motion[1] double 0.00005 run scoreboard players get %pk_target_y pk.common.value
execute store result storage pk_enhanced_adventure:data Temp.Entity.Motion[2] double 0.00005 run scoreboard players get %pk_target_z pk.common.value
data modify entity @s Motion set from storage pk_enhanced_adventure:data Temp.Entity.Motion

# Remove marker
kill @e[tag=pk_direction]