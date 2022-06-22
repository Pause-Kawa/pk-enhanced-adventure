# Mark as checked once
tag @s add pk_enhanced_adventure_checked

# Store necessary data
data remove storage pk_enhanced_adventure:data Temp.Entity
data modify storage pk_enhanced_adventure:data Temp.Entity set from entity @s {}

# Rain Dissipater
execute if data storage pk_enhanced_adventure:data Temp.Entity{CustomPotionEffects:[{Id:29,Amplifier:4b}]} run function pk_enhanced_adventure_core:items/rain_dissipater/initalize