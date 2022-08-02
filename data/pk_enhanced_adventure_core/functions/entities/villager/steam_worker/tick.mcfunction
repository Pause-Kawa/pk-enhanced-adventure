# Store the necessary data
data remove storage pk_enhanced_adventure:data Temp.Entity
data modify storage pk_enhanced_adventure:data Temp.Entity set from entity @s {}

# Watch level to change offers
execute if entity @s[tag=!pk_reached_level_5] run function pk_enhanced_adventure_core:entities/villager/steam_worker/watch_level