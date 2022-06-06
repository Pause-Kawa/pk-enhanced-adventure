# Mark as not triggered and remove ongoing stage
tag @s remove pk_triggered
tag @s remove pk_stage_ongoing

# Reset all relative fight triggers
execute store result score %pk_temp pk.enhanced_adventure.trigger.value run data get storage pk_enhanced_adventure:data FightEngine.TriggerValue
execute positioned ~-40 -64 ~-40 as @e[type=marker,tag=pk_fight_trigger,dx=80,dy=512,dz=80] if score @s pk.enhanced_adventure.trigger.value = %pk_temp pk.enhanced_adventure.trigger.value run tag @s remove pk_triggered

# Remove all relative entities
execute as @e[type=#pk_enhanced_adventure_core:mobs,tag=pk_fight_engine_relative_entity,distance=..50] if score @s pk.enhanced_adventure.trigger.value = %pk_temp pk.enhanced_adventure.trigger.value run tp @s ~ -1000 ~

# Check if it exists a hook event to run on reset
execute if data storage pk_enhanced_adventure:data FightEngine.EventsOnReset run function pk_enhanced_adventure_strc:common_structures/mechanics/fight_engine/hooks/on_reset