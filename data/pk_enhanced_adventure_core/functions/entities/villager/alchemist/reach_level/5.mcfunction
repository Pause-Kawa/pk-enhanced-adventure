# Mark level as reached
tag @s add pk_reached_level_5

# Change offers
# - Clear array
data modify storage pk_enhanced_adventure:data Temp.Recipes set value []

# 1 Book + 32 Emerald = 1 Alchemist Registry
data modify storage pk_enhanced_adventure:data Temp.Recipes append value {xp:30,priceMultiplier:0.2f,maxUses:1,buy:{id:"minecraft:emerald",Count:32b},buyB:{id:"minecraft:book",Count:1b},sell:{id:"minecraft:written_book",Count:1b,tag:{display:{Name:'{"text":"Alchemist Registry","color":"white","italic":false}'},pkAlchemistRegistry:1b,title:"Alchemist Registry",author:"Unknowned author",generation:3,pages:['{"text":"This book will teach you how to master the teleportation recipes. It was wrote by our ancestor, who managed to exctract the substance responsible for fast particles translation from strange fruits, that have been brung by some tall thin black creatures.","font":"minecraft:alt"}'],HideFlags:32,CustomModelData:1611400}}}

# - Remove new offers and append array
data remove entity @s Offers.Recipes[-1]
data remove entity @s Offers.Recipes[-1]
data modify entity @s Offers.Recipes append from storage pk_enhanced_adventure:data Temp.Recipes[]