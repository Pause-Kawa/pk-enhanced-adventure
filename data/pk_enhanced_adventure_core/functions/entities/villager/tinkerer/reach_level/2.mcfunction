# Mark level as reached
tag @s add pk_reached_level_2

# Change offers
# - Clear array
data modify storage pk_enhanced_adventure:data Temp.Recipes set value []

# - 10 Copper Ingot = 1 Emerald
data modify storage pk_enhanced_adventure:data Temp.Recipes append value {xp:10,priceMultiplier:0.05f,maxUses:16,buy:{id:"minecraft:copper_ingot",Count:10b},sell:{id:"minecraft:emerald",Count:1b}}

# - 3 Emerald = 1 Repeater OR 4 Emerald = 1 Comparator
function pk_enhanced_adventure_core:helpers/random/uniform_0_1000
execute if score $out pk.enhanced_adventure.random matches ..500 run data modify storage pk_enhanced_adventure:data Temp.Recipes append value {xp:5,priceMultiplier:0.05f,maxUses:16,buy:{id:"minecraft:emerald",Count:3b},sell:{id:"minecraft:repeater",Count:1b}}
execute if score $out pk.enhanced_adventure.random matches 501.. run data modify storage pk_enhanced_adventure:data Temp.Recipes append value {xp:5,priceMultiplier:0.05f,maxUses:16,buy:{id:"minecraft:emerald",Count:4b},sell:{id:"minecraft:comparator",Count:1b}}

# - Remove new offers and append array
data remove entity @s Offers.Recipes[-1]
data remove entity @s Offers.Recipes[-1]
data modify entity @s Offers.Recipes append from storage pk_enhanced_adventure:data Temp.Recipes[]