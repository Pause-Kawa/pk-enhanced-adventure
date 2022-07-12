# Increment and define interaction id to link the current Ancient Altar with its current user
scoreboard players add %pk_enchanced_adventure_next_interaction_id pk.enhanced_adventure.ancient_altar.interaction.id 1
scoreboard players operation @s pk.enhanced_adventure.ancient_altar.interaction.id = %pk_enchanced_adventure_next_interaction_id pk.enhanced_adventure.ancient_altar.interaction.id
scoreboard players operation @e[type=marker,tag=pk_ancient_altar,dy=0,limit=1] pk.enhanced_adventure.ancient_altar.interaction.id = %pk_enchanced_adventure_next_interaction_id pk.enhanced_adventure.ancient_altar.interaction.id

# Tag both Ancient Altar and user
tag @s add pk_using_ancient_altar
tag @e[type=marker,tag=pk_ancient_altar,dy=0,limit=1] add pk_in_use

# Set Lock
data modify block ~ ~ ~ Lock set value "Lock§r"