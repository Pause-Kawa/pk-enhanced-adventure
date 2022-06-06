# Mark as started
tag @s add pk_triggered

# Retrieve the relative fight engine (in a squared radius of 20 blocks)
execute store result score %pk_temp pk.enhanced_adventure.trigger.value run data get storage pk_enhanced_adventure:data FightTrigger.TriggerValue
execute positioned ~-20 -64 ~-20 as @e[type=marker,tag=pk_fight_engine,tag=!pk_triggered,dx=40,dy=512,dz=40] if score @s pk.enhanced_adventure.trigger.value = %pk_temp pk.enhanced_adventure.trigger.value at @s run function pk_enhanced_adventure_strc:common_structures/mechanics/fight_engine/stages/before_start