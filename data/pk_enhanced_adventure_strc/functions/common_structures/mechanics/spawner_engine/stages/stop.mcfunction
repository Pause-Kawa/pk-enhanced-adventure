# _DEBUG LOGS
execute if score %pk_enhanced_adventure_debug_log pk.common.value matches 1 run tellraw @a[tag=pk_dev] {"text":"SPAWNER ENGINE - STAGE: Stop","color":"yellow"}

# Remove marker
kill @s