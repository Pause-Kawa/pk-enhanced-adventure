# Prepare data
data modify storage pk_enhanced_adventure:data AncientAltar.Gui.InputSlots.Tool set from storage pk_enhanced_adventure:data AncientAltar.Gui.Current[{Slot:10b}]
data modify storage pk_enhanced_adventure:data AncientAltar.Gui.InputSlots.AncientTablet set from storage pk_enhanced_adventure:data AncientAltar.Gui.Current[{Slot:12b}]

# Dispatch check for the Ancient Tablet
execute if data storage pk_enhanced_adventure:data AncientAltar.Gui.InputSlots.AncientTablet{tag:{pkAllegiance:1b}} run function pk_enhanced_adventure_core:mechanics/ancient_altar/states/in_use/patterns/check/allegiance