# Clear the player
function pk_enhanced_adventure_core:mechanics/bewitchments/robustness/player/released_bow

# Search the shot arrow
tag @s add pk_current_player
data modify storage pk_enhanced_adventure:data Temp.Player.UUID set from entity @s UUID
execute anchored eyes positioned ^ ^ ^ as @e[type=#arrows,distance=..1] run function pk_enhanced_adventure_core:mechanics/bewitchments/robustness/arrow/check_owner
tag @s remove pk_current_player