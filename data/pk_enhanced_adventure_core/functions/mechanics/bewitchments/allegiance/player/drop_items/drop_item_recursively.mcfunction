# Drop current item in the loop
summon item ~ ~ ~ {Tags:["pk_current_item","pk_enhanced_adventure_air_toggling"],Item:{id:"minecraft:stick",Count:1b}}
execute as @e[type=item,tag=pk_current_item,distance=..0.1] run function pk_enhanced_adventure_core:mechanics/bewitchments/allegiance/player/drop_items/item_set_data

# Drop items recursively
data remove storage pk_enhanced_adventure:data Temp.Items[-1]
execute if data storage pk_enhanced_adventure:data Temp.Items[{}] run function pk_enhanced_adventure_core:mechanics/bewitchments/allegiance/player/drop_items/drop_item_recursively