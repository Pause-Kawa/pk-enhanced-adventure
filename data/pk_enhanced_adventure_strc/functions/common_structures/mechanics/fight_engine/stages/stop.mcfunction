# Unassign the current stage
tag @s remove pk_stage_stopping

# Check if it exists a hook event to run on starting
execute if data storage pk_enhanced_adventure:data FightEngine.EventsOnStop run function pk_enhanced_adventure_strc:common_structures/mechanics/fight_engine/hooks/on_stop

# Remove relative fight triggers
execute store result score %pk_temp pk.enhanced_adventure.trigger.value run data get storage pk_enhanced_adventure:data FightEngine.TriggerValue
execute positioned ~-40 -64 ~-40 as @e[type=marker,tag=pk_fight_trigger,dx=80,dy=512,dz=80] if score @s pk.enhanced_adventure.trigger.value = %pk_temp pk.enhanced_adventure.trigger.value run kill @s

# Remove the current marker
kill @s