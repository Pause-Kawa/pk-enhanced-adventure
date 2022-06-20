# _DEBUG LOGS
execute if score %pk_enhanced_adventure_debug_tick_log pk.common.value matches 1 run tellraw @a[tag=pk_dev] {"text":"SPAWNER ENGINE - STAGE: Waiting start","color":"yellow"}

# Trigger the relative fight engine depending on the  distance to check
# Round to 10 blocks, 20 blocks, 30 blocks or 50 blocks
execute if score @s pk.enhanced_adventure.trigger.distance matches ..10 if entity @p[gamemode=!spectator,distance=..10] run function pk_enhanced_adventure_strc:common_structures/mechanics/spawner_engine/stages/start
execute if score @s pk.enhanced_adventure.trigger.distance matches 11..20 if entity @p[gamemode=!spectator,distance=..20] run function pk_enhanced_adventure_strc:common_structures/mechanics/spawner_engine/stages/start
execute if score @s pk.enhanced_adventure.trigger.distance matches 21..30 if entity @p[gamemode=!spectator,distance=..30] run function pk_enhanced_adventure_strc:common_structures/mechanics/spawner_engine/stages/start
execute if score @s pk.enhanced_adventure.trigger.distance matches 30.. if entity @p[gamemode=!spectator,distance=..50] run function pk_enhanced_adventure_strc:common_structures/mechanics/spawner_engine/stages/start