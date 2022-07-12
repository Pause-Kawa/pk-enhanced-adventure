# Give back the input items to the user
# - Tool
execute if data storage pk_enhanced_adventure:data AncientAltar.Gui.Current[{Slot:10b}] at @p[tag=pk_current_player] run summon item ~ ~ ~ {Tags:["pk_current_item"],Item:{id:"minecraft:stick",Count:1b},PickupDelay:0s}
execute if data storage pk_enhanced_adventure:data AncientAltar.Gui.Current[{Slot:10b}] unless entity @p[tag=pk_current_player] run summon item ~ ~1 ~ {Tags:["pk_current_item"],Item:{id:"minecraft:stick",Count:1b},PickupDelay:0s}
data modify entity @e[type=item,tag=pk_current_item,limit=1,distance=..16] Item set from storage pk_enhanced_adventure:data AncientAltar.Gui.Current[{Slot:10b}]
tag @e[type=item,tag=pk_current_item,limit=1,distance=..16] remove pk_current_item
# - Ancient Tablet
execute if data storage pk_enhanced_adventure:data AncientAltar.Gui.Current[{Slot:12b}] at @p[tag=pk_current_player] run summon item ~ ~ ~ {Tags:["pk_current_item"],Item:{id:"minecraft:stick",Count:1b},PickupDelay:0s}
execute if data storage pk_enhanced_adventure:data AncientAltar.Gui.Current[{Slot:12b}] unless entity @p[tag=pk_current_player] run summon item ~ ~1 ~ {Tags:["pk_current_item"],Item:{id:"minecraft:stick",Count:1b},PickupDelay:0s}
data modify entity @e[type=item,tag=pk_current_item,limit=1,distance=..16] Item set from storage pk_enhanced_adventure:data AncientAltar.Gui.Current[{Slot:12b}]
tag @e[type=item,tag=pk_current_item,limit=1,distance=..16] remove pk_current_item

# Free player
tag @p[tag=pk_current_player] remove pk_using_ancient_altar

# Free the Ancient Altar
# - Reset to default content
data modify storage pk_enhanced_adventure:data AncientAltar.Gui.Current set from storage pk_enhanced_adventure:data AncientAltar.Gui.Default.Items
data modify block ~ ~ ~ Items set from storage pk_enhanced_adventure:data AncientAltar.Gui.Current
# - Clear marker's previous GUI score and tag
data remove entity @s data.Gui.Previous
scoreboard players set @s pk.enhanced_adventure.ancient_altar.interaction.id 0
tag @s remove pk_has_output_stack
tag @s remove pk_in_use
data remove block ~ ~ ~ Lock

# Stop sound
stopsound @a[distance=..30] block block.barrel.close