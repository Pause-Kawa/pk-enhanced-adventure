# Initialize marker
scoreboard players operation @s pk.enhanced_adventure.allegiance.id = %pk_next_id pk.enhanced_adventure.allegiance.id
data modify entity @s data.AllegianceItems set from storage pk_enhanced_adventure:data Temp.Player.AllegianceItems
tag @s remove pk_current_marker