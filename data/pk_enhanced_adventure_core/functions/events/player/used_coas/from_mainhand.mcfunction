# Store the hand used
data modify storage pk_enhanced_adventure:data Temp.UsedHand set value "mainhand"

# Dispatcher
execute if entity @s[predicate=pk_enhanced_adventure_core:hold/phenix_pepper_on_a_stick/in_any_hand] run function pk_enhanced_adventure_core:items/phenix_pepper_on_a_stick/player_used