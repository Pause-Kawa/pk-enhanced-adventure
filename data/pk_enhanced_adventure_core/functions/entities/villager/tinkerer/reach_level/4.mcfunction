# Mark level as reached
tag @s add pk_reached_level_4

# Change offers
# - Clear array
data modify storage pk_enhanced_adventure:data Temp.Recipes set value []

# - 8 Emerald = 1 Dispenser OR 8 Emerald = 1 Piston
function pk_enhanced_adventure_core:helpers/random/uniform_0_1000
execute if score $out pk.enhanced_adventure.random matches ..500 run data modify storage pk_enhanced_adventure:data Temp.Recipes append value {xp:15,priceMultiplier:0.05f,maxUses:16,buy:{id:"minecraft:emerald",Count:8b},sell:{id:"minecraft:dispenser",Count:1b}}
execute if score $out pk.enhanced_adventure.random matches 501.. run data modify storage pk_enhanced_adventure:data Temp.Recipes append value {xp:15,priceMultiplier:0.05f,maxUses:16,buy:{id:"minecraft:emerald",Count:8b},sell:{id:"minecraft:piston",Count:1b}}

# - Remove new offers and append array
data remove entity @s Offers.Recipes[-1]
data remove entity @s Offers.Recipes[-1]
data modify entity @s Offers.Recipes append from storage pk_enhanced_adventure:data Temp.Recipes[]