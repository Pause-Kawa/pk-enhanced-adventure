# Prepare current item to return to relative player
summon item ~ ~ ~ {Tags:["pk_current_item"],PickupDelay:0s,Item:{id:"minecraft:stick",Count:1b}}
data modify entity @e[type=item,tag=pk_current_item,limit=1,distance=..0.1] Item set from entity @s data.AllegianceItems[-1]
data remove entity @s data.AllegianceItems[-1]

# If the marker doesn't have item to return anymore
execute unless data entity @s data.AllegianceItems[0].id run function pk_enhanced_adventure_core:mechanics/bewitchments/allegiance/marker/stop