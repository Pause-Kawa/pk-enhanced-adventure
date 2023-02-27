# Mark as checked once
tag @s add pk_enhanced_adventure_checked

# Store necessary data
data modify storage pk_enhanced_adventure:data Temp.Entity set from entity @s {}

# Storm Dissipater
execute if data storage pk_enhanced_adventure:data Temp.Entity.FireworksItem.tag{pkStormDissipater:1b} run function pk_enhanced_adventure_core:items/storm_dissipater/check_source