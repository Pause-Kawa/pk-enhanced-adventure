# Store data
data modify storage pk_enhanced_adventure:data Temp.Entity.HandItems set value []
data modify storage pk_enhanced_adventure:data Temp.Entity.HandDropChances set value [] 
data modify storage pk_enhanced_adventure:data Temp.Entity.HandItems set from entity @s HandItems
data modify storage pk_enhanced_adventure:data Temp.Entity.HandDropChances set from entity @s HandDropChances

# Randomly chose a pattern to define the order the entity drops its weapon if it has items in both hands
function pk_enhanced_adventure_core:helpers/random/uniform_0_1000
scoreboard players operation %pk_temp pk.enhanced_adventure.random = $out pk.enhanced_adventure.random
execute if score %pk_temp pk.enhanced_adventure.random matches ..500 positioned ~ ~1 ~ run function pk_enhanced_adventure_core:mechanics/bewitchments/snatch/drop_target_random_order_hand_1
execute if score %pk_temp pk.enhanced_adventure.random matches 501.. positioned ~ ~1 ~ run function pk_enhanced_adventure_core:mechanics/bewitchments/snatch/drop_target_random_order_hand_2