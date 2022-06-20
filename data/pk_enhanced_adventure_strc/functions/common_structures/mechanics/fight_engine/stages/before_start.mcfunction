# _DEBUG LOGS
execute if score %pk_enhanced_adventure_debug_log pk.common.value matches 1 run tellraw @a[tag=pk_dev] {"text":"FIGHT ENGINE - STAGE: Before Start","color":"yellow"}

# Mark the current stage
tag @s add pk_triggered
tag @s add pk_stage_starting

# Store the necessary data temporary
data modify storage pk_enhanced_adventure:data Temp.Engine set value {}
data modify storage pk_enhanced_adventure:data Temp.Engine set from entity @s data 

# Retrieve all relative fight triggers and mark them as triggered
execute store result score %pk_temp pk.enhanced_adventure.trigger.value run data get storage pk_enhanced_adventure:data Temp.Engine.TriggerValue
execute positioned ~-40 -64 ~-40 as @e[type=marker,tag=pk_fight_trigger,dx=80,dy=512,dz=80] if score @s pk.enhanced_adventure.trigger.value = %pk_temp pk.enhanced_adventure.trigger.value run tag @s add pk_triggered

# Check if it exists a hook event to run before starting
execute if data storage pk_enhanced_adventure:data Temp.Engine.BeforeStart run function pk_enhanced_adventure_strc:common_structures/mechanics/fight_engine/hooks/before_start
execute unless data storage pk_enhanced_adventure:data Temp.Engine.BeforeStart run function pk_enhanced_adventure_strc:common_structures/mechanics/fight_engine/stages/start