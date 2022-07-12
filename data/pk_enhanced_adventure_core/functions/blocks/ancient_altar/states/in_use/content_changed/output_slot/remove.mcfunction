# Remove tag
tag @s remove pk_has_output_stack

# Remove output item and update the block content from storage
data remove storage pk_enhanced_adventure:data AncientAltar.Gui.Current[{Slot:16b,tag:{pkOutputStack:1b}}]
data modify block ~ ~ ~ Items set from storage pk_enhanced_adventure:data AncientAltar.Gui.Current