# Mark level as reached
tag @s add pk_reached_level_3

# Change offers
# - Clear array
data modify storage pk_enhanced_adventure:data Temp.Recipes set value []

# - Set random range values
scoreboard players set $min pk.enhanced_adventure.random 1
scoreboard players set $max pk.enhanced_adventure.random 3

# - 1 Sugar + 5 Emerald = 1 Delicious Potion of Swiftness OR 1 Magma Cream + 5 Emerald = 1 Delicious Potion of Fire Resitance
function pk_enhanced_adventure_core:helpers/random/uniform
execute if score $out pk.enhanced_adventure.random matches 1 run data modify storage pk_enhanced_adventure:data Temp.Recipes append value {xp:10,priceMultiplier:0.05f,maxUses:12,buy:{id:"minecraft:emerald",Count:5b},buyB:{id:"minecraft:sugar",Count:1b},sell:{id:"minecraft:potion",Count:1b,tag:{display:{Name:'{"text":"Delicious Potion of Swiftness","italic":false}'},CustomPotionEffects:[{Id:1b,Amplifier:1b,Duration:5400}],CustomPotionColor:8303306}}}
execute if score $out pk.enhanced_adventure.random matches 2 run data modify storage pk_enhanced_adventure:data Temp.Recipes append value {xp:10,priceMultiplier:0.05f,maxUses:12,buy:{id:"minecraft:emerald",Count:5b},buyB:{id:"minecraft:magma_cream",Count:1b},sell:{id:"minecraft:potion",Count:1b,tag:{display:{Name:'{"text":"Delicious Potion of Fire Resistance","italic":false}'},CustomPotionEffects:[{Id:12b,Amplifier:0b,Duration:19200}],CustomPotionColor:15244603}}}
execute if score $out pk.enhanced_adventure.random matches 3 run data modify storage pk_enhanced_adventure:data Temp.Recipes append value {xp:10,priceMultiplier:0.05f,maxUses:12,buy:{id:"minecraft:emerald",Count:5b},buyB:{id:"minecraft:blaze_powder",Count:1b},sell:{id:"minecraft:potion",Count:1b,tag:{display:{Name:'{"text":"Delicious Potion of Strength","italic":false}'},CustomPotionEffects:[{Id:5b,Amplifier:1b,Duration:5400}],CustomPotionColor:9839908}}}

# - 1 Ghast Tear + 5 Emerald = 1 Delicious Potion of Regeneration OR 1 Pufferfish + 5 Emerald = 1 Delicious Potion of Water Breathing
function pk_enhanced_adventure_core:helpers/random/uniform
execute if score $out pk.enhanced_adventure.random matches 1 run data modify storage pk_enhanced_adventure:data Temp.Recipes append value {xp:10,priceMultiplier:0.05f,maxUses:12,buy:{id:"minecraft:emerald",Count:5b},buyB:{id:"minecraft:ghast_tear",Count:1b},sell:{id:"minecraft:potion",Count:1b,tag:{display:{Name:'{"text":"Delicious Potion of Regeneration","italic":false}'},CustomPotionEffects:[{Id:10b,Amplifier:1b,Duration:5400}],CustomPotionColor:13721262}}}
execute if score $out pk.enhanced_adventure.random matches 2 run data modify storage pk_enhanced_adventure:data Temp.Recipes append value {xp:10,priceMultiplier:0.05f,maxUses:12,buy:{id:"minecraft:emerald",Count:5b},buyB:{id:"minecraft:magma_cream",Count:1b},sell:{id:"minecraft:potion",Count:1b,tag:{display:{Name:'{"text":"Delicious Potion of Water Breathing","italic":false}'},CustomPotionEffects:[{Id:13b,Amplifier:0b,Duration:19200}],CustomPotionColor:3101852}}}
execute if score $out pk.enhanced_adventure.random matches 3 run data modify storage pk_enhanced_adventure:data Temp.Recipes append value {xp:10,priceMultiplier:0.05f,maxUses:12,buy:{id:"minecraft:emerald",Count:5b},buyB:{id:"minecraft:golden_carrot",Count:1b},sell:{id:"minecraft:potion",Count:1b,tag:{display:{Name:'{"text":"Delicious Potion of Night Vision","italic":false}'},CustomPotionEffects:[{Id:16b,Amplifier:0b,Duration:19200}],CustomPotionColor:2105508}}}

# - Remove new offers and append array
data remove entity @s Offers.Recipes[-1]
data remove entity @s Offers.Recipes[-1]
data modify entity @s Offers.Recipes append from storage pk_enhanced_adventure:data Temp.Recipes[]