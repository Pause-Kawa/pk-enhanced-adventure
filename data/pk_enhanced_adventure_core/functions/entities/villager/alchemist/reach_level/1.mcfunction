# Mark level as reached
tag @s add pk_reached_level_1

# Change offers
# - Clear array
data modify storage pk_enhanced_adventure:data Temp.Recipes set value []

# - 22 Nether Wart = 1 Emerald OR 10 Blaze Powder = 1 Emerald
function pk_enhanced_adventure_core:helpers/random/uniform_0_1000
execute if score $out pk.enhanced_adventure.random matches ..500 run data modify storage pk_enhanced_adventure:data Temp.Recipes append value {xp:2,priceMultiplier:0.05f,maxUses:16,buy:{id:"minecraft:nether_wart",Count:22b},sell:{id:"minecraft:emerald",Count:1b}}
execute if score $out pk.enhanced_adventure.random matches 501.. run data modify storage pk_enhanced_adventure:data Temp.Recipes append value {xp:2,priceMultiplier:0.05f,maxUses:16,buy:{id:"minecraft:blaze_powder",Count:10b},sell:{id:"minecraft:emerald",Count:1b}}

# - 12 Glass Bottle = 1 Emerald
data modify storage pk_enhanced_adventure:data Temp.Recipes append value {xp:2,priceMultiplier:0.05f,maxUses:16,buy:{id:"minecraft:glass_bottle",Count:12b},sell:{id:"minecraft:emerald",Count:1b}}

# - Append array
data modify entity @s Offers.Recipes set from storage pk_enhanced_adventure:data Temp.Recipes