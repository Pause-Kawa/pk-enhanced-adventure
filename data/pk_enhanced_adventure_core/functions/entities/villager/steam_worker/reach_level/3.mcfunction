# Mark level as reached
tag @s add pk_reached_level_3

# Change offers
# - Clear array
data modify storage pk_enhanced_adventure:data Temp.Recipes set value []

# - 4 Emerald + 1 Glass = 1 Tinted Glass 
data modify storage pk_enhanced_adventure:data Temp.Recipes append value {xp:10,priceMultiplier:0.05f,maxUses:12,buy:{id:"minecraft:emerald",Count:4b},buyB:{id:"minecraft:glass",Count:1b},sell:{id:"minecraft:tinted_glass",Count:1b}}

# - 1 Emerald + 4 Arrow = 4 Rain Dissipater
data modify storage pk_enhanced_adventure:data Temp.Recipes append value {xp:10,priceMultiplier:0.05f,maxUses:12,buy:{id:"minecraft:emerald",Count:1b},buyB:{id:"minecraft:arrow",Count:4b},sell:{id:"minecraft:tipped_arrow",Count:4b,tag:{display:{Name:'{"text":"Rain Dissipater","italic":false}'},HideFlags:33,pkRainDissipater:1b,Enchantments:[{}],CustomPotionEffects:[{Id:29,Amplifier:4b,Duration:1}],CustomPotionColor:56831,CustomModelData:1611403}}}

# - Remove new offers and append array
data remove entity @s Offers.Recipes[-1]
data remove entity @s Offers.Recipes[-1]
data modify entity @s Offers.Recipes append from storage pk_enhanced_adventure:data Temp.Recipes[]