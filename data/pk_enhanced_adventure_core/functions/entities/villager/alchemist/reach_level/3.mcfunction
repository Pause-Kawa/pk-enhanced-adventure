# Mark level as reached
tag @s add pk_reached_level_3

# Change offers
# - Clear array
data modify storage pk_enhanced_adventure:data Temp.Recipes set value []

# - 1 Sugar + 5 Emerald = 1 Delicious Potion of Swiftness OR 1 Magma Cream + 5 Emerald = 1 Delicious Potion of Fire Resitance
function pk_enhanced_adventure_core:helpers/random/uniform_0_1000
execute if score $out pk.enhanced_adventure.random matches ..500 run data modify storage pk_enhanced_adventure:data Temp.Recipes append value {xp:10,priceMultiplier:0.2f,maxUses:12,buy:{id:"minecraft:emerald",Count:5b},buyB:{id:"minecraft:sugar",Count:1b},sell:{id:"minecraft:potion",Count:1b,tag:{display:{Name:'{"text":"Delicious Potion of Swiftness"}'},CustomPotionEffects:[{Id:1b,Amplifier:1b,Duration:5400}]}}}
execute if score $out pk.enhanced_adventure.random matches 501.. run data modify storage pk_enhanced_adventure:data Temp.Recipes append value {xp:10,priceMultiplier:0.2f,maxUses:12,buy:{id:"minecraft:emerald",Count:5b},buyB:{id:"minecraft:magma_cream",Count:1b},sell:{id:"minecraft:potion",Count:1b,tag:{display:{Name:'{"text":"Delicious Potion of Fire Resistance"}'},CustomPotionEffects:[{Id:12b,Amplifier:0b,Duration:19200}]}}}

# - 1 Ghast Tear + 5 Emerald = 1 Delicious Potion of Regeneration OR 1 Pufferfish + 5 Emerald = 1 Delicious Potion of Water Breathing
function pk_enhanced_adventure_core:helpers/random/uniform_0_1000
execute if score $out pk.enhanced_adventure.random matches ..500 run data modify storage pk_enhanced_adventure:data Temp.Recipes append value {xp:10,priceMultiplier:0.2f,maxUses:12,buy:{id:"minecraft:emerald",Count:5b},buyB:{id:"minecraft:ghast_tear",Count:1b},sell:{id:"minecraft:potion",Count:1b,tag:{display:{Name:'{"text":"Delicious Potion of Regeneration"}'},CustomPotionEffects:[{Id:10b,Amplifier:1b,Duration:5400}]}}}
execute if score $out pk.enhanced_adventure.random matches 501.. run data modify storage pk_enhanced_adventure:data Temp.Recipes append value {xp:10,priceMultiplier:0.2f,maxUses:12,buy:{id:"minecraft:emerald",Count:5b},buyB:{id:"minecraft:magma_cream",Count:1b},sell:{id:"minecraft:potion",Count:1b,tag:{display:{Name:'{"text":"Delicious Potion of Water Breathing"}'},CustomPotionEffects:[{Id:13b,Amplifier:0b,Duration:19200}]}}}

# - Remove new offers and append array
data remove entity @s Offers.Recipes[-1]
data remove entity @s Offers.Recipes[-1]
data modify entity @s Offers.Recipes append from storage pk_enhanced_adventure:data Temp.Recipes[]