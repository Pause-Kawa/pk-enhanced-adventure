# Store the count of entities to summon
execute store result score %pk_temp pk.enhanced_adventure.counter run data get entity @s data.BossReinforcements

# Summon entity and run particles
execute if score %pk_temp pk.enhanced_adventure.counter matches 1.. positioned ~ ~ ~1 run function pk_enhanced_adventure_core:entities/wildling_guardian/behavior/reinforcement/summon_entity
execute if score %pk_temp pk.enhanced_adventure.counter matches 2.. positioned ~ ~ ~-1 run function pk_enhanced_adventure_core:entities/wildling_guardian/behavior/reinforcement/summon_entity
execute if score %pk_temp pk.enhanced_adventure.counter matches 3.. positioned ~1 ~ ~ run function pk_enhanced_adventure_core:entities/wildling_guardian/behavior/reinforcement/summon_entity
execute if score %pk_temp pk.enhanced_adventure.counter matches 4.. positioned ~-1 ~ ~ run function pk_enhanced_adventure_core:entities/wildling_guardian/behavior/reinforcement/summon_entity

# Reset the value
data modify entity @s data.BossReinforcements set value 0

# Sound
playsound entity.evoker.cast_spell ambient @a[distance=..50] ~ ~ ~