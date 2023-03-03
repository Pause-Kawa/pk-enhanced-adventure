# _DEBUG LOGS
execute if score %pk_enhanced_adventure_debug_log pk.common.value matches 1 run tellraw @a[tag=pk_dev] {"text":"FIGHT ENGINE - HOOK: On Stop","color":"yellow"}

# Events dispatcher
execute if data storage pk_enhanced_adventure:data Temp.Engine.OnStop.Events[{Name:"wildlings_temple_statue_lever_mouth_open"}] run function pk_enhanced_adventure_strc:structures/wildlings_temple/events/fight_engine/on_stop/statue_lever_mouth_open

execute if data storage pk_enhanced_adventure:data Temp.Engine.OnStop.Events[{Name:"wildlings_temple_room_extinguish_fire"}] run function pk_enhanced_adventure_strc:structures/wildlings_temple/events/fight_engine/on_stop/room_extinguish_fire

execute if data storage pk_enhanced_adventure:data Temp.Engine.OnStop.Events[{Name:"wildling_guardian_beaten"}] run function pk_enhanced_adventure_strc:structures/wildlings_temple/events/fight_engine/on_stop/wildling_guardian_beaten