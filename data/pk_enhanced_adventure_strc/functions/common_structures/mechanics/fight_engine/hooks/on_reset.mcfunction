# _DEBUG LOGS
execute if score %pk_enhanced_adventure_debug_log pk.common.value matches 1 run tellraw @a[tag=pk_dev] {"text":"FIGHT ENGINE - HOOK: On Reset","color":"yellow"}

# Events dispatcher
execute if data storage pk_enhanced_adventure:data Temp.Engine.OnReset.Events[{Name:"wildlings_temple_room_extinguish_fire"}] run function pk_enhanced_adventure_strc:structures/wildlings_temple/events/fight_engine/on_reset/room_extinguish_fire

execute if data storage pk_enhanced_adventure:data Temp.Engine.OnReset.Events[{Name:"wildling_guardian_reset"}] run function pk_enhanced_adventure_strc:structures/wildlings_temple/events/fight_engine/on_reset/wildling_guardian_reset