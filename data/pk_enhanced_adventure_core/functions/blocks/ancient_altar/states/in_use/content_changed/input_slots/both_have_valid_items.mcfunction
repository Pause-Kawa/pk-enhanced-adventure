# Prepare data
data modify storage pk_enhanced_adventure:data AncientAltar.Gui.InputSlots.Tool set from storage pk_enhanced_adventure:data AncientAltar.Gui.Current[{Slot:10b}]
data modify storage pk_enhanced_adventure:data AncientAltar.Gui.InputSlots.AncientTablet set from storage pk_enhanced_adventure:data AncientAltar.Gui.Current[{Slot:12b}]

# Dispatch check for the Ancient Tablet
execute if data storage pk_enhanced_adventure:data AncientAltar.Gui.InputSlots.AncientTablet{tag:{pkAllegiance:1b}} run function pk_enhanced_adventure_core:blocks/ancient_altar/states/in_use/patterns/check/allegiance
execute if data storage pk_enhanced_adventure:data AncientAltar.Gui.InputSlots.AncientTablet{tag:{pkImpetuousity:1b}} run function pk_enhanced_adventure_core:blocks/ancient_altar/states/in_use/patterns/check/impetuousity
execute if data storage pk_enhanced_adventure:data AncientAltar.Gui.InputSlots.AncientTablet{tag:{pkRobustness:1b}} run function pk_enhanced_adventure_core:blocks/ancient_altar/states/in_use/patterns/check/robustness
execute if data storage pk_enhanced_adventure:data AncientAltar.Gui.InputSlots.AncientTablet{tag:{pkSafeguardInstinct:1b}} run function pk_enhanced_adventure_core:blocks/ancient_altar/states/in_use/patterns/check/safeguard_instinct
execute if data storage pk_enhanced_adventure:data AncientAltar.Gui.InputSlots.AncientTablet{tag:{pkSnatch:1b}} run function pk_enhanced_adventure_core:blocks/ancient_altar/states/in_use/patterns/check/snatch
execute if data storage pk_enhanced_adventure:data AncientAltar.Gui.InputSlots.AncientTablet{tag:{pkSoulsMagnetisation:1b}} run function pk_enhanced_adventure_core:blocks/ancient_altar/states/in_use/patterns/check/souls_magnetisation
execute if data storage pk_enhanced_adventure:data AncientAltar.Gui.InputSlots.AncientTablet{tag:{pkWildCushioning:1b}} run function pk_enhanced_adventure_core:blocks/ancient_altar/states/in_use/patterns/check/wild_cushioning