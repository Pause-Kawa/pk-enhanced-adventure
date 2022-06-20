# _DEBUG LOGS
execute if score %pk_enhanced_adventure_debug_log pk.common.value matches 1 run tellraw @a[tag=pk_dev] {"text":"SPAWNER ENGINE - STAGE: Start","color":"yellow"}

# Increment the current stage
tag @s add pk_stage_ongoing
scoreboard players set @s pk.enhanced_adventure.delay 0