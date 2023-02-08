# Retrieve the current user
scoreboard players operation %pk_temp pk.common.value = @s pk.enhanced_adventure.ancient_altar.interaction.id
tag @a[tag=pk_using_ancient_altar,distance=..16,predicate=pk_enhanced_adventure_core:gameplay/ancient_altar/id_matching] add pk_current_player

# Define Previous and Current Storage
data modify storage pk_enhanced_adventure:data AncientAltar.Gui.Previous set from entity @s data.Gui.Previous
data modify storage pk_enhanced_adventure:data AncientAltar.Gui.Current set from block ~ ~ ~ Items

# Watch content
data modify storage pk_enhanced_adventure:data AncientAltar.Gui.Compare set from storage pk_enhanced_adventure:data AncientAltar.Gui.Previous
execute store success score %pk_temp pk.common.value run data modify storage pk_enhanced_adventure:data AncientAltar.Gui.Compare set from storage pk_enhanced_adventure:data AncientAltar.Gui.Current
execute if score %pk_temp pk.common.value matches 1 run function pk_enhanced_adventure_core:blocks/ancient_altar/states/in_use/content_changed/check

# Store current GUI in marker data
data modify entity @s data.Gui.Previous set from storage pk_enhanced_adventure:data AncientAltar.Gui.Current

# Refresh content from storage
data modify block ~ ~ ~ Items set from storage pk_enhanced_adventure:data AncientAltar.Gui.Current

# User closed GUI or leaved the game
execute unless block ~ ~ ~ barrel[open=true] run function pk_enhanced_adventure_core:blocks/ancient_altar/states/in_use/close
execute unless entity @p[tag=pk_current_player] run function pk_enhanced_adventure_core:blocks/ancient_altar/states/in_use/close

# Remove tag from the current user
tag @p[tag=pk_current_player] remove pk_current_player