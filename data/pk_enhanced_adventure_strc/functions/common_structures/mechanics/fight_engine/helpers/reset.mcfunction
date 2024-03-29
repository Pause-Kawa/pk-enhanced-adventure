# _DEBUG LOGS
execute if score %pk_enhanced_adventure_debug_log pk.common.value matches 1 run tellraw @a[tag=pk_dev] {"text":"FIGHT ENGINE - HELPER: Reset","color":"yellow"}

# Mark as not triggered and remove ongoing stage
tag @s remove pk_triggered
tag @s remove pk_stage_ongoing

# Reset all relative fight triggers
execute store result score %pk_temp pk.enhanced_adventure.trigger.value run data get storage pk_enhanced_adventure:data Temp.Engine.TriggerValue
execute positioned ~-40 -64 ~-40 as @e[type=marker,tag=pk_fight_trigger,dx=80,dy=512,dz=80,predicate=pk_enhanced_adventure_strc:id_match/trigger_value] run tag @s remove pk_triggered

# Remove all relative entities
execute as @e[type=#pk_enhanced_adventure_core:tracked_mobs,tag=pk_fight_engine_relative_entity,distance=..50,predicate=pk_enhanced_adventure_strc:id_match/trigger_value] run tp @s ~ -1000 ~

# Check if it exists a hook event to run on reset
execute if data storage pk_enhanced_adventure:data Temp.Engine.OnReset run function pk_enhanced_adventure_strc:common_structures/mechanics/fight_engine/hooks/on_reset