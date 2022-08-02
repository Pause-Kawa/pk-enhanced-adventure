# Return item to user
data modify storage pk_enhanced_adventure:data Temp.Item set from storage pk_enhanced_adventure:data AncientAltar.Gui.Current[{Slot:16b}] 
data remove storage pk_enhanced_adventure:data Temp.Item.Slot
scoreboard players operation %pk_temp pk.common.value = @s pk.enhanced_adventure.ancient_altar.interaction.id
execute as @a[tag=pk_using_ancient_altar,distance=..16] if score %pk_temp pk.common.value = @s pk.enhanced_adventure.ancient_altar.interaction.id at @s run summon item ~ ~ ~ {Tags:["pk_current_item"],Item:{id:"stick",Count:1b},PickupDelay:0}
data modify entity @e[type=item,tag=pk_current_item,distance=..16,limit=1] Item set from storage pk_enhanced_adventure:data Temp.Item

# Update current storage
data remove storage pk_enhanced_adventure:data AncientAltar.Gui.Current[{Slot:16b}]