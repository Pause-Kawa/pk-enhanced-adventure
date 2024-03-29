# _DEBUG LOGS
execute if score %pk_enhanced_adventure_debug_log pk.common.value matches 1 run tellraw @a[tag=pk_dev] {"text":"FIGHT ENGINE - STAGE: Stop","color":"yellow"}

# Unassign the current stage
tag @s remove pk_stage_stopping

# Check if it exists a hook event to run on starting
execute if data storage pk_enhanced_adventure:data Temp.Engine.OnStop run function pk_enhanced_adventure_strc:common_structures/mechanics/fight_engine/hooks/on_stop

# Remove relative fight triggers
execute store result score %pk_temp pk.enhanced_adventure.trigger.value run data get storage pk_enhanced_adventure:data Temp.Engine.TriggerValue
execute positioned ~-40 -64 ~-40 as @e[type=marker,tag=pk_fight_trigger,dx=80,dy=512,dz=80,predicate=pk_enhanced_adventure_strc:id_match/trigger_value] run kill @s

# Remove the current marker
kill @s