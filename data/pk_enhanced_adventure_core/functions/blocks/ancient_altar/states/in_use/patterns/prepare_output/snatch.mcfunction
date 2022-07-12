# Add the relative tag
tag @s add pk_has_output_stack

# Prepare output
# - General data
data modify storage pk_enhanced_adventure:data Temp.Item set from storage pk_enhanced_adventure:data AncientAltar.Gui.InputSlots.Tool
data modify storage pk_enhanced_adventure:data Temp.Item.Count set value 1b
data modify storage pk_enhanced_adventure:data Temp.Item.Slot set value 16b
data modify storage pk_enhanced_adventure:data Temp.Item.tag.pkOutputStack set value 1b
execute unless data storage pk_enhanced_adventure:data Temp.Item.tag.Enchantments[{}] run data modify storage pk_enhanced_adventure:data Temp.Item.tag.Enchantments set value [{}]
# - Data relative to the bewitchment
data modify storage pk_enhanced_adventure:data Temp.Item.tag.pkBewitchments.Snatch set value 1b
data modify storage pk_enhanced_adventure:data Temp.Item.tag.display.Lore prepend value '{"text":"Snatch","color":"yellow","italic":false}'

# Update the block content and current storage
data modify block ~ ~ ~ Items append from storage pk_enhanced_adventure:data Temp.Item
data modify storage pk_enhanced_adventure:data AncientAltar.Gui.Current set from block ~ ~ ~ Items