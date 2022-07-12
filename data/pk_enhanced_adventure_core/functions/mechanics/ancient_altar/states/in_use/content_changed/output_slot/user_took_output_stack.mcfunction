# Remove tag
tag @s remove pk_has_output_stack

# Remove count to both input slots
# - Tool
execute store result score %pk_temp pk.common.value run data get storage pk_enhanced_adventure:data AncientAltar.Gui.Current[{Slot:10b}].Count
scoreboard players remove %pk_temp pk.common.value 1
execute store result storage pk_enhanced_adventure:data AncientAltar.Gui.Current[{Slot:10b}].Count byte 1 run scoreboard players get %pk_temp pk.common.value
# - Ancient Tablet
execute store result score %pk_temp pk.common.value run data get storage pk_enhanced_adventure:data AncientAltar.Gui.Current[{Slot:12b}].Count
scoreboard players remove %pk_temp pk.common.value 1
execute store result storage pk_enhanced_adventure:data AncientAltar.Gui.Current[{Slot:12b}].Count byte 1 run scoreboard players get %pk_temp pk.common.value

# Update content from storage
data modify block ~ ~ ~ Items set from storage pk_enhanced_adventure:data AncientAltar.Gui.Current

# Remove levels to the player except if it is in creative mode
xp add @p[tag=pk_current_player,gamemode=!creative] -10 levels

# Animations
particle witch ~ ~0.5 ~ 1 1.1 1 0.01 90
particle dragon_breath ~ ~0.5 ~ 1 1.1 1 0.01 90
particle enchant ~ ~0.5 ~ 1 1.1 1 0.01 100
playsound minecraft:block.end_portal.spawn ambient @a ~ ~ ~ 1 1.7
playsound minecraft:block.beacon.power_select ambient @a ~ ~ ~ 1 1.7