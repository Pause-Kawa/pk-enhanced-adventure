# Initialize the entity data
# - Check if the item already has the NoGravity nbt (from other commands or datapacks)
tag @s[nbt={NoGravity:1b}] add pk_no_gravity
# - Apply NoGravity if it is in liquids
execute if block ~ ~ ~ #pk_enhanced_adventure_core:liquids run data modify entity @s NoGravity set value 1b
# - Add the relative tags
tag @s add pk_souls_magnetisation_attracted

# Summon the temporary entity
execute facing entity @p[tag=pk_current_player,distance=..7] feet run summon marker ^ ^ ^1 {Tags:["pk_direction"]}

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

# Apply motion
# - Apply X & Z motion from scores
execute store result entity @s Motion[0] double 0.00005 run scoreboard players get %pk_target_x pk.common.value
execute store result entity @s Motion[2] double 0.00005 run scoreboard players get %pk_target_z pk.common.value
# - Apply Y motion from score if the item has NoGravity
execute if entity @s[nbt={NoGravity:1b}] run execute store result entity @s Motion[1] double 0.00005 run scoreboard players get %pk_target_y pk.common.value
# - Otherwise, apply fixed value for Y motion : Like most of entities, items entities without NoGravity:1b nbt are constantly falling, so we need to use a positive vertical motion to avoid visual glitches when we manually apply other motion values.
execute unless block ~ ~ ~ #pk_enhanced_adventure_core:liquids if entity @s[nbt={OnGround:1b}] run data modify entity @s Motion[1] set value 0.04d

# Remove the temporary entity
kill @e[tag=pk_direction]