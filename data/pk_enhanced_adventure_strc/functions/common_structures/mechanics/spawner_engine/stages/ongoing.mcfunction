# _DEBUG LOGS
execute if score %pk_enhanced_adventure_debug_tick_log pk.common.value matches 1 run tellraw @a[tag=pk_dev] {"text":"SPAWNER ENGINE - STAGE: Ongoing","color":"yellow"}

# If the spawner engine delay reaches 0, check if it can spawn the next wave
execute if entity @s[scores={pk.enhanced_adventure.delay=0}] run function pk_enhanced_adventure_strc:common_structures/mechanics/spawner_engine/helpers/check_if_can_spawn_next_wave

# Reset (if fight not defeated and there's no alive player not in spectator mode anymore in a radius of 50 blocks)
execute if entity @s[tag=pk_stage_ongoing,tag=pk_resetable] unless entity @e[type=player,distance=..50,gamemode=!spectator] run function pk_enhanced_adventure_strc:common_structures/mechanics/spawner_engine/helpers/reset

# Reduce delay before next wave
scoreboard players remove @s[scores={pk.enhanced_adventure.delay=1..}] pk.enhanced_adventure.delay 1