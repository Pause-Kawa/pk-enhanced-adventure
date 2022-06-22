# Reset should break score and increment the damage score
scoreboard players set %pk_temp_should_break pk.common.value 0
scoreboard players add %pk_temp_damage pk.common.value 1

# Check if the item should break
execute if score %pk_temp_damage pk.common.value matches 25 if data storage pk_enhanced_adventure:data Temp.DamageItem.Item{id:"minecraft:carrot_on_a_stick"} run scoreboard players set %pk_temp_should_break pk.common.value 1
execute if score %pk_temp_damage pk.common.value matches 100 if data storage pk_enhanced_adventure:data Temp.DamageItem.Item{id:"minecraft:warped_fungus_on_a_stick"} run scoreboard players set %pk_temp_should_break pk.common.value 1

# If it is the case, break, otherwise just damage it
execute if score %pk_temp_should_break pk.common.value matches 1 at @s anchored eyes positioned ^ ^ ^0.5 run function pk_enhanced_adventure_core:helpers/item_damage/break
execute if score %pk_temp_should_break pk.common.value matches 0 run function pk_enhanced_adventure_core:helpers/item_damage/damage