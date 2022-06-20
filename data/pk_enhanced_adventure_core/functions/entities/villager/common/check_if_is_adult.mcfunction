# Store the necessary data
data remove storage pk_enhanced_adventure:data Temp.Entity
data modify storage pk_enhanced_adventure:data Temp.Entity set from entity @s {}

execute store result score %pk_temp pk.common.value run data get storage pk_enhanced_adventure:data Temp.Entity.Age
execute if score %pk_temp pk.common.value matches 0.. run tag @s add pk_adult