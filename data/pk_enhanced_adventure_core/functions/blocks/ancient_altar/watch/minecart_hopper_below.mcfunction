# Store the entity data
data modify storage pk_enhanced_adventure:data Temp.Entity set from entity @s

# Drop items
summon item ~ ~ ~ {Item:{id:"minecraft:hopper_minecart",Count:1b}}

# Remove the hopper minecart and GUI item
kill @s
kill @e[type=item,nbt={Item:{tag:{pkItemGUI:1b}}},distance=..10]