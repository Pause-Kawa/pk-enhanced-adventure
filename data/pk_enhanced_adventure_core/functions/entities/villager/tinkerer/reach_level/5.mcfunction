# Mark level as reached
tag @s add pk_reached_level_5

# Change offers
# - Clear array
data modify storage pk_enhanced_adventure:data Temp.Recipes set value []

# 1 Book + 32 Emerald = 1 Alchemist Registry
data modify storage pk_enhanced_adventure:data Temp.Recipes append value {xp:30,priceMultiplier:0.2f,maxUses:1,buy:{id:"minecraft:warped_fungus_on_a_stick",Count:1b},buyB:{id:"minecraft:lodestone",Count:1b},sell:{id:"minecraft:warped_fungus_on_a_stick",Count:1b,tag:{display:{Name:'{"text":"Magnet Hook","color":"yellow","italic":false}',Lore:['[{"text":"Charge: ","color":"white","italic":false},{"text":"5"},{"text":" / "},{"text":"5"}]']},pkMagnetHook:1b,pkCharge:5,pkChargeMax:5,Enchantments:[{}],CustomModelData:1611402}}}

# - Remove new offers and append array
data remove entity @s Offers.Recipes[-1]
data modify entity @s Offers.Recipes append from storage pk_enhanced_adventure:data Temp.Recipes[]