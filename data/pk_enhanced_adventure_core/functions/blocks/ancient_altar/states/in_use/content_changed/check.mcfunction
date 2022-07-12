# Remove warn
execute if data storage pk_enhanced_adventure:data AncientAltar.Gui.Current[{Slot:14b,id:"minecraft:barrier"}] run function pk_enhanced_adventure_core:blocks/ancient_altar/states/in_use/content_changed/locked_slots/remove_warn

# Check if a locked slot has been replaced or taken
data modify storage pk_enhanced_adventure:data AncientAltar.Gui.LockedSlots set from storage pk_enhanced_adventure:data AncientAltar.Gui.Current
data modify storage pk_enhanced_adventure:data Temp.Container.Items set from storage pk_enhanced_adventure:data AncientAltar.Gui.Current
execute store result score %pk_valid_locked_slots pk.common.value run data remove storage pk_enhanced_adventure:data Temp.Container.Items[{tag:{pkItemGUI:1b}}]
execute unless score %pk_valid_locked_slots pk.common.value matches 24 run function pk_enhanced_adventure_core:blocks/ancient_altar/states/in_use/content_changed/locked_slots/has_changed

# Check if the output stack has been taken by the user
execute if entity @s[tag=pk_has_output_stack] unless data storage pk_enhanced_adventure:data AncientAltar.Gui.Current[{Slot:16b,tag:{pkOutputStack:1b}}] run function pk_enhanced_adventure_core:blocks/ancient_altar/states/in_use/content_changed/output_slot/user_took_output_stack

# Check if the output slot has been filled with unexpected item
execute if entity @s[tag=!pk_has_output_stack] if data storage pk_enhanced_adventure:data AncientAltar.Gui.Current[{Slot:16b}] run function pk_enhanced_adventure_core:blocks/ancient_altar/states/in_use/content_changed/output_slot/user_placed_undesired_item

# Check if the tool slot contains a valid item
data modify storage pk_enhanced_adventure:data AncientAltar.Gui.InputSlots.HasTool set value 0b
execute if data storage pk_enhanced_adventure:data AncientAltar.Gui.Current[{Slot:10b}] run function pk_enhanced_adventure_core:blocks/ancient_altar/states/in_use/content_changed/input_slots/check_tool_slot

# Check if the Ancient Tablet slot contains a valid item
data modify storage pk_enhanced_adventure:data AncientAltar.Gui.InputSlots.HasAncientTablet set value 0b
execute if data storage pk_enhanced_adventure:data AncientAltar.Gui.Current[{Slot:12b,tag:{pkAncientTablet:1b}}] run data modify storage pk_enhanced_adventure:data AncientAltar.Gui.InputSlots.HasAncientTablet set value 1b

# If both input slots contains expected items
execute if entity @s[tag=!pk_has_output_stack] if data storage pk_enhanced_adventure:data AncientAltar.Gui.InputSlots{HasTool:1b,HasAncientTablet:1b} run function pk_enhanced_adventure_core:blocks/ancient_altar/states/in_use/content_changed/input_slots/both_have_valid_items

# If both input doesn't contains expected items anymore
execute if entity @s[tag=pk_has_output_stack] if data storage pk_enhanced_adventure:data AncientAltar.Gui.InputSlots{HasTool:0b} run function pk_enhanced_adventure_core:blocks/ancient_altar/states/in_use/content_changed/output_slot/remove
execute if entity @s[tag=pk_has_output_stack] if data storage pk_enhanced_adventure:data AncientAltar.Gui.InputSlots{HasAncientTablet:0b} run function pk_enhanced_adventure_core:blocks/ancient_altar/states/in_use/content_changed/output_slot/remove