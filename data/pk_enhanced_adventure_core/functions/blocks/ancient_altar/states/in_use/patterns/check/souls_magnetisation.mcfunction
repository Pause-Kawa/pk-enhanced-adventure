# Prepare storage
data modify storage pk_enhanced_adventure:data Temp.Item set value {}
data modify storage pk_enhanced_adventure:data Temp.Item set from storage pk_enhanced_adventure:data AncientAltar.Gui.InputSlots.Tool
data remove storage pk_enhanced_adventure:data Temp.Item.Slot

# Summon a temp entity to check using predicate if the tool can have the bewitchment 
summon armor_stand ~ ~ ~ {Tags:["pk_current_entity"],Invisible:1b,Marker:1b}
data modify entity @e[type=armor_stand,tag=pk_current_entity,limit=1,distance=..0.1] HandItems[0] set from storage pk_enhanced_adventure:data Temp.Item

# Check if the player has enough levels (>=50)
function pk_enhanced_adventure_core:blocks/ancient_altar/helpers/check_if_player_has_enough_level

# If the pattern is correct but the user doesn't have enough levels
execute if score %pk_has_enough_levels pk.common.value matches 0 if entity @e[type=armor_stand,tag=pk_current_entity,predicate=pk_enhanced_adventure_core:gameplay/ancient_altar/accepted_tools/ancient_tablet_souls_magnetisation,nbt=!{HandItems:[{tag:{pkBewitchments:{SoulsMagnetisation:1b}}}]},distance=..0.1] run function pk_enhanced_adventure_core:blocks/ancient_altar/states/in_use/patterns/prepare_output/not_enough_level_placeholder

# If the pattern is correct and the user has enough levels
execute if score %pk_has_enough_levels pk.common.value matches 1 if entity @e[type=armor_stand,tag=pk_current_entity,predicate=pk_enhanced_adventure_core:gameplay/ancient_altar/accepted_tools/ancient_tablet_souls_magnetisation,nbt=!{HandItems:[{tag:{pkBewitchments:{SoulsMagnetisation:1b}}}]},distance=..0.1] run function pk_enhanced_adventure_core:blocks/ancient_altar/states/in_use/patterns/prepare_output/souls_magnetisation

# Remove temp entity
kill @e[type=armor_stand,tag=pk_current_entity,distance=..0.1]