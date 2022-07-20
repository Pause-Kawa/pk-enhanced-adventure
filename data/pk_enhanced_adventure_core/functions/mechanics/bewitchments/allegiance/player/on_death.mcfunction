# Store player inventory
data modify storage pk_enhanced_adventure:data Temp.Player.Inventory set from entity @s Inventory

# Store player items to drop
data modify storage pk_enhanced_adventure:data Temp.Player.ItemsToDrop set from storage pk_enhanced_adventure:data Temp.Player.Inventory
data remove storage pk_enhanced_adventure:data Temp.Player.ItemsToDrop[{tag:{pkBewitchments:{Allegiance:1b}}}]

# Store Allegiance items
data modify storage pk_enhanced_adventure:data Temp.Player.AllegianceItems set value []
data modify storage pk_enhanced_adventure:data Temp.Player.AllegianceItems append from storage pk_enhanced_adventure:data Temp.Player.Inventory[{tag:{pkBewitchments:{Allegiance:1b}}}]

# Summon relative marker
scoreboard players add %pk_next_id pk.enhanced_adventure.allegiance.id 1
scoreboard players operation @s pk.enhanced_adventure.allegiance.id = %pk_next_id pk.enhanced_adventure.allegiance.id
summon marker -30000000 0 1611 {Tags:["pk_allegiance_items_holder","pk_current_marker"]}
execute positioned -30000000 0 1611 as @e[type=marker,tag=pk_current_marker,distance=..0.1] run function pk_enhanced_adventure_core:mechanics/bewitchments/allegiance/marker/initialize

# Drop player experience
execute positioned ~ ~1 ~ run function pk_enhanced_adventure_core:mechanics/bewitchments/allegiance/player/drop_experience/dispatcher

# Drop items to drop
scoreboard players set $min pk.enhanced_adventure.random 0
scoreboard players set $max pk.enhanced_adventure.random 40
data modify storage pk_enhanced_adventure:data Temp.Items set from storage pk_enhanced_adventure:data Temp.Player.ItemsToDrop
execute positioned ~ ~1 ~ run function pk_enhanced_adventure_core:mechanics/bewitchments/allegiance/player/drop_items/drop_item_recursively

# Clear the player
clear @s
xp set @s 0 points
xp set @s 0 levels

# Mark the player as waiting for Allegiance items to comes back if its Inventory contains one or more
execute if data storage pk_enhanced_adventure:data Temp.Player.AllegianceItems[0].id run tag @s add pk_waiting_for_allegiance_items