# Check if fight engine relative entities still exist (in a radius of 50 blocks)
scoreboard players set %pk_temp pk.enhanced_adventure.counter 0
execute store result score %pk_temp pk.enhanced_adventure.trigger.value run data get storage pk_enhanced_adventure:data FightEngine.TriggerValue
execute as @e[type=#pk_enhanced_adventure_core:mobs,tag=pk_fight_engine_relative_entity,distance=..50] if score @s pk.enhanced_adventure.trigger.value = %pk_temp pk.enhanced_adventure.trigger.value run scoreboard players add %pk_temp pk.enhanced_adventure.counter 1

# If no entity is found run "Before stop" or "Stop" stage
execute if score %pk_temp pk.enhanced_adventure.counter matches 0 run function pk_enhanced_adventure_strc:common_structures/mechanics/fight_engine/stages/before_stop