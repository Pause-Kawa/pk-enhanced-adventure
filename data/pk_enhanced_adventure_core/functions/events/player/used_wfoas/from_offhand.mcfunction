# Store the hand used
data modify storage pk_enhanced_adventure:data Temp.UsedHand set value "offhand"

# Dispatcher
execute if entity @s[predicate=pk_enhanced_adventure_core:hold/magnet_hook/in_any_hand] run function pk_enhanced_adventure_core:items/magnet_hook/player_used