# Mark level as reached
tag @s add pk_reached_level_1

# Change offers
# - Clear array
data modify storage pk_enhanced_adventure:data Temp.Recipes set value []

# - 36 Redstone = 1 Emerald OR 4 Amethyst Shard = 1 Emerald
function pk_enhanced_adventure_core:helpers/random/uniform_0_1000
execute if score $out pk.enhanced_adventure.random matches ..500 run data modify storage pk_enhanced_adventure:data Temp.Recipes append value {xp:2,priceMultiplier:0.05f,maxUses:16,buy:{id:"minecraft:redstone",Count:30b},sell:{id:"minecraft:emerald",Count:1b}}
execute if score $out pk.enhanced_adventure.random matches 501.. run data modify storage pk_enhanced_adventure:data Temp.Recipes append value {xp:2,priceMultiplier:0.05f,maxUses:16,buy:{id:"minecraft:amethyst_shard",Count:4b},sell:{id:"minecraft:emerald",Count:1b}}

# - 7 Emerald = 1 Spyglass OR 5 Emerald = 1 Compass
function pk_enhanced_adventure_core:helpers/random/uniform_0_1000
execute if score $out pk.enhanced_adventure.random matches ..500 run data modify storage pk_enhanced_adventure:data Temp.Recipes append value {xp:1,priceMultiplier:0.05f,maxUses:12,buy:{id:"minecraft:emerald",Count:7b},sell:{id:"minecraft:spyglass",Count:1b}}
execute if score $out pk.enhanced_adventure.random matches 501.. run data modify storage pk_enhanced_adventure:data Temp.Recipes append value {xp:1,priceMultiplier:0.05f,maxUses:12,buy:{id:"minecraft:emerald",Count:5b},sell:{id:"minecraft:compass",Count:1b}}

# - Append array
data modify entity @s Offers.Recipes set from storage pk_enhanced_adventure:data Temp.Recipes