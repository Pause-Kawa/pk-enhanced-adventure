# _DEBUG LOGS
execute if score %pk_enhanced_adventure_debug_log pk.common.value matches 1 run tellraw @a[tag=pk_dev] {"text":"FIGHT ENGINE - STAGE: Before Stop","color":"yellow"}

# Increment the current stage
tag @s remove pk_stage_ongoing
tag @s add pk_stage_stopping

# Check if it exists a hook event to run before stopping
execute if data storage pk_enhanced_adventure:data Temp.Engine.BeforeStop run function pk_enhanced_adventure_strc:common_structures/mechanics/fight_engine/hooks/before_stop
execute unless data storage pk_enhanced_adventure:data Temp.Engine.BeforeStop run function pk_enhanced_adventure_strc:common_structures/mechanics/fight_engine/stages/stop