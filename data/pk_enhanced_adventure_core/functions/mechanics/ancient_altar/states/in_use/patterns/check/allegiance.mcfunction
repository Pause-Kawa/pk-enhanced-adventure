# Check if the tool can have the bewitchment
data modify storage pk_enhanced_adventure:data Temp.Item set value {}
data modify storage pk_enhanced_adventure:data Temp.Item set from storage pk_enhanced_adventure:data AncientAltar.Gui.InputSlots.Tool
data remove storage pk_enhanced_adventure:data Temp.Item.Slot

summon armor_stand ~ ~ ~ {Tags:["pk_current_entity"],Invisible:1b,Marker:1b}
data modify entity @e[type=armor_stand,tag=pk_current_entity,limit=1,distance=..0.1] HandItems[0] set from storage pk_enhanced_adventure:data Temp.Item

function pk_enhanced_adventure_core:mechanics/ancient_altar/helpers/check_if_player_has_enough_level

execute if score %pk_has_enough_levels pk.common.value matches 0 if entity @e[type=armor_stand,tag=pk_current_entity,predicate=pk_enhanced_adventure_core:gameplay/ancient_altar/accepted_tools/ancient_tablet_allegiance,nbt=!{HandItems:[{tag:{pkBewitchments:{Allegiance:1b}}}]},distance=..0.1] run function pk_enhanced_adventure_core:mechanics/ancient_altar/states/in_use/patterns/prepare_output/not_enough_level_placeholder

execute if score %pk_has_enough_levels pk.common.value matches 1 if entity @e[type=armor_stand,tag=pk_current_entity,predicate=pk_enhanced_adventure_core:gameplay/ancient_altar/accepted_tools/ancient_tablet_allegiance,nbt=!{HandItems:[{tag:{pkBewitchments:{Allegiance:1b}}}]},distance=..0.1] run function pk_enhanced_adventure_core:mechanics/ancient_altar/states/in_use/patterns/prepare_output/allegiance

kill @e[type=armor_stand,tag=pk_current_entity,distance=..0.1]