# Check if user replaced a locked slot
data remove storage pk_enhanced_adventure:data AncientAltar.Gui.LockedSlots[{Slot:10b}]
data remove storage pk_enhanced_adventure:data AncientAltar.Gui.LockedSlots[{Slot:12b}]
data remove storage pk_enhanced_adventure:data AncientAltar.Gui.LockedSlots[{Slot:16b}]
data remove storage pk_enhanced_adventure:data AncientAltar.Gui.LockedSlots[{tag:{pkItemGUI:1b}}]
data remove storage pk_enhanced_adventure:data AncientAltar.Gui.LockedSlots[{tag:{pkOutputStack:1b}}]
execute if data storage pk_enhanced_adventure:data AncientAltar.Gui.LockedSlots[0] run function pk_enhanced_adventure_core:blocks/ancient_altar/states/in_use/content_changed/locked_slots/user_placed_undesired_item

# Clear user no matter the case (replaced or taken GUI item)
clear @p[tag=pk_current_player] #pk_enhanced_adventure_core:ancient_altar/gui/locked_slots{pkItemGUI:1b}

# Update the block content and current storage
data modify block ~ ~ ~ Items append from storage pk_enhanced_adventure:data AncientAltar.Gui.Default.Items[]
data modify storage pk_enhanced_adventure:data AncientAltar.Gui.Current set from block ~ ~ ~ Items