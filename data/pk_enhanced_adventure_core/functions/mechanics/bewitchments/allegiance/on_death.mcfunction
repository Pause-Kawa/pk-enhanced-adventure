# Store player inventory
data modify storage pk_enhanced_adventure:data Temp.Player.Inventory set from entity @s Inventory

# Store player items to drop
data modify storage pk_enhanced_adventure:data Temp.Player.ItemsToDrop set from storage pk_enhanced_adventure:data Temp.Player.Inventory
data remove storage pk_enhanced_adventure:data Temp.Player.ItemsToDrop[{tag:{pkBewitchments:{Allegiance:1b}}}]

# Drop player experience
execute positioned ~ ~1 ~ run function pk_enhanced_adventure_core:mechanics/bewitchments/allegiance/drop_experience/dispatcher

# Drop items to drop
scoreboard players set $min pk.enhanced_adventure.random 0
scoreboard players set $max pk.enhanced_adventure.random 40
data modify storage pk_enhanced_adventure:data Temp.Items set from storage pk_enhanced_adventure:data Temp.Player.ItemsToDrop
execute positioned ~ ~1 ~ run function pk_enhanced_adventure_core:mechanics/bewitchments/allegiance/drop_items/drop_item_recursively

# Clear the player
function pk_enhanced_adventure_core:mechanics/bewitchments/allegiance/clear_player_inventory
xp set @s 0 points
xp set @s 0 levels