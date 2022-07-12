# Check if the tool slot as an expected item
data modify storage pk_enhanced_adventure:data Temp.Item set value {}
data modify storage pk_enhanced_adventure:data Temp.Item set from storage pk_enhanced_adventure:data AncientAltar.Gui.Current[{Slot:10b}]
data remove storage pk_enhanced_adventure:data Temp.Item.Slot
summon armor_stand ~ ~ ~ {Tags:["pk_current_entity"],Invisible:1b,Marker:1b}
data modify entity @e[type=armor_stand,tag=pk_current_entity,limit=1,distance=..0.1] HandItems[0] set from storage pk_enhanced_adventure:data Temp.Item
execute if entity @e[type=armor_stand,tag=pk_current_entity,predicate=pk_enhanced_adventure_core:gameplay/ancient_altar/accepted_tools/all,distance=..0.1] run data modify storage pk_enhanced_adventure:data AncientAltar.Gui.InputSlots.HasTool set value 1b
kill @e[type=armor_stand,tag=pk_current_entity,distance=..0.1]