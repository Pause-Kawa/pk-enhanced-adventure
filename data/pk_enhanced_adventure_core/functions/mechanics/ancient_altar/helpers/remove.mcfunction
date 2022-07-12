# Drop item
summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b,tag:{pkAncientAltar:1b,display:{Name:'{"italic":false,"color":"white","text":"Ancient Altar"}'},HideFlags:1,Enchantments:[{id:"minecraft:power",lvl:1s}],BlockEntityTag:{Lock:"PlaceholderForAncientAltar§r"},CustomModelData:1611404}}}

# Remove the decoration entities and dropped items
kill @e[type=item,nbt={Item:{tag:{pkItemGUI:1b}}},distance=..5]
kill @e[type=item,nbt={Item:{tag:{pkOutputStack:1b}}},distance=..5]
kill @e[type=item,nbt={Item:{id:"minecraft:barrel",tag:{display.Name:'{"italic":false,"text":"Ancient Altar"}'}}},distance=..5]
execute align xyz run kill @e[type=falling_block,tag=pk_enhanced_adventure_ancient_altar_decoration,dy=0]

# Remove marker
kill @s

# Animations
stopsound @a[distance=..32] block block.wood.break
playsound block.basalt.break block @a[distance=..32] ~ ~ ~ 1 1.6