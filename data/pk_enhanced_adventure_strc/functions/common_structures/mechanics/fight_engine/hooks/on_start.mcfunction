# _DEBUG LOGS
execute if score %pk_enhanced_adventure_debug_log pk.common.value matches 1 run tellraw @a[tag=pk_dev] {"text":"FIGHT ENGINE - HOOK: On Start","color":"yellow"}

# Events dispatcher
execute if data storage pk_enhanced_adventure:data Temp.Engine.OnStart.Events[{Name:"wildlings_temple_statue_lever_mouth_close"}] run function pk_enhanced_adventure_strc:structures/wildlings_temple/events/fight_engine/on_start/statue_lever_mouth_close

execute if data storage pk_enhanced_adventure:data Temp.Engine.OnStart.Events[{Name:"wildlings_temple_room_set_fire"}] run function pk_enhanced_adventure_strc:structures/wildlings_temple/events/fight_engine/on_start/room_set_fire