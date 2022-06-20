# Mark level as reached
tag @s add pk_reached_level_2

# Change offers
# - Clear array
data modify storage pk_enhanced_adventure:data Temp.Recipes set value []

# - 12 Glowstone Dust = 1 Emerald OR 26 Redstone = 1 Emerald
function pk_enhanced_adventure_core:helpers/random/uniform_0_1000
execute if score $out pk.enhanced_adventure.random matches ..500 run data modify storage pk_enhanced_adventure:data Temp.Recipes append value {xp:5,priceMultiplier:0.05f,maxUses:16,buy:{id:"minecraft:glowstone_dust",Count:8b},sell:{id:"minecraft:emerald",Count:1b}}
execute if score $out pk.enhanced_adventure.random matches 501.. run data modify storage pk_enhanced_adventure:data Temp.Recipes append value {xp:5,priceMultiplier:0.05f,maxUses:16,buy:{id:"minecraft:redstone",Count:26b},sell:{id:"minecraft:emerald",Count:1b}}

# - 4 Spider Eye = 1 Emerald OR 2 Fermented Spider Eye = 1 Emerald
function pk_enhanced_adventure_core:helpers/random/uniform_0_1000
execute if score $out pk.enhanced_adventure.random matches ..500 run data modify storage pk_enhanced_adventure:data Temp.Recipes append value {xp:10,priceMultiplier:0.05f,maxUses:16,buy:{id:"minecraft:spider_eye",Count:4b},sell:{id:"minecraft:emerald",Count:1b}}
execute if score $out pk.enhanced_adventure.random matches 501.. run data modify storage pk_enhanced_adventure:data Temp.Recipes append value {xp:10,priceMultiplier:0.05f,maxUses:16,buy:{id:"minecraft:fermented_spider_eye",Count:2b},sell:{id:"minecraft:emerald",Count:1b}}

# - Remove new offers and append array
data remove entity @s Offers.Recipes[-1]
data remove entity @s Offers.Recipes[-1]
data modify entity @s Offers.Recipes append from storage pk_enhanced_adventure:data Temp.Recipes[]