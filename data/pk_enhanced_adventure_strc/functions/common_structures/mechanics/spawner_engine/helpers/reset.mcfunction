# _DEBUG LOGS
execute if score %pk_enhanced_adventure_debug_log pk.common.value matches 1 run tellraw @a[tag=pk_dev] {"text":"SPAWNER ENGINE - HELPER: Reset","color":"yellow"}

# Remove ongoing stage
tag @s remove pk_stage_ongoing

# Reset the wave score
execute if data storage pk_enhanced_adventure:data Temp.Engine{WavesReset:1b} store result score @s pk.enhanced_adventure.spawner.wave run data get storage pk_enhanced_adventure:data Temp.Engine.Waves

# Remove all relative entities
execute as @e[type=#pk_enhanced_adventure_core:tracked_mobs,tag=pk_spawner_engine_relative_entity,distance=..50] if score @s pk.enhanced_adventure.trigger.value = %pk_temp pk.enhanced_adventure.trigger.value run tp @s ~ -1000 ~

# Check if it exists a hook event to run on reset
execute if data storage pk_enhanced_adventure:data Temp.Engine.OnReset run function pk_enhanced_adventure_strc:common_structures/mechanics/spawner_engine/hooks/on_reset