# Add the relative tag
tag @s add pk_has_dropped_item
tag @s add pk_current_entity

# Prepare item
summon item ~ ~ ~ {Tags:["pk_current_item","pk_enhanced_adventure_air_toggling"],Item:{id:"minecraft:stick",Count:1b}}
data modify entity @e[type=item,tag=pk_current_item,distance=..0.1,limit=1] Item set from storage pk_enhanced_adventure:data Temp.Entity.HandItems[0]
execute as @e[type=item,tag=pk_current_item,distance=..0.1,limit=1] run function pk_enhanced_adventure_core:mechanics/bewitchments/snatch/dropped_item_prepare_motion

# Remove item from hand
item replace entity @s weapon.mainhand with minecraft:air

# Clear the relative tag
tag @s remove pk_current_entity

# Animations
particle sweep_attack ~ ~ ~ 0 0 0 0.01 1
particle dragon_breath ~ ~ ~ 0.2 0.2 0.2 0.01 2
playsound entity.player.attack.sweep ambient @a[distance=..50] ~ ~ ~ 0.75 1.2
playsound item.shield.break ambient @a[distance=..50] ~ ~ ~ 0.75 1.2