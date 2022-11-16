data modify storage pk_enhanced_adventure:data Temp.Engine set from entity @s data

# Dispatch Events
execute if data storage pk_enhanced_adventure:data Temp.Engine.OnStop.Events[{Name:"higuru_temple_inner_door_open"}] run function pk_enhanced_adventure_strc:structures/higuru_temple/mechanics/inner_door/vertical_open

# Remove marker
kill @s