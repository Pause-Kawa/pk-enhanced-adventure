# Mark the relative arrow as Rain Dissipater
tag @s add pk_rain_dissipater

# Marks the arrow has armed Rain Dissipater if launched high enough and in overworld
execute store result score %pk_temp pk.common.value run data get entity @s Motion[1] 1000 
execute if score %pk_temp pk.common.value matches 2100.. run tag @s[predicate=pk_enhanced_adventure_core:location/dimension/overworld] add pk_armed_rain_dissipater
scoreboard players set @s[tag=pk_armed_rain_dissipater] pk.enhanced_adventure.delay 40