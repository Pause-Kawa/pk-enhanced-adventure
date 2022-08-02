# Mark level as reached
tag @s add pk_reached_level_4

# Change offers
# - Clear array
data modify storage pk_enhanced_adventure:data Temp.Recipes set value []

# - 16 Cookies + 7 Emerald = 1 Potion of Teleportation
data modify storage pk_enhanced_adventure:data Temp.Recipes append value {xp:15,priceMultiplier:0.05f,maxUses:16,buy:{id:"minecraft:emerald",Count:7b},buyB:{id:"minecraft:cookie",Count:16b},sell:{id:"minecraft:potion",Count:1b,tag:{pkTeleportationPotion:1b,CustomPotionColor:8246765,Enchantments:[{}],display:{Name:'{"text":"Potion of Teleportation","italic":false}',Lore:['"Teleport to your memorized point"']},HideFlags:33}}}

# - 1 Chorus Fruit + 4 Emerald = 1 Potion of Teleportation
data modify storage pk_enhanced_adventure:data Temp.Recipes append value {xp:15,priceMultiplier:0.05f,maxUses:32,buy:{id:"minecraft:emerald",Count:4b},buyB:{id:"minecraft:chorus_fruit",Count:1b},sell:{id:"minecraft:potion",Count:1b,tag:{pkTeleportationPotion:1b,CustomPotionColor:8246765,Enchantments:[{}],display:{Name:'{"text":"Potion of Teleportation","italic":false}',Lore:['"Teleport to your memorized point"']},HideFlags:33}}}

# 1 Empty Map + 36 Emerald = 1 Memorial Excerpt
data modify storage pk_enhanced_adventure:data Temp.Recipes append value {xp:30,priceMultiplier:0.2f,maxUses:12,buy:{id:"minecraft:emerald",Count:36b},buyB:{id:"minecraft:empty_map",Count:1b},sell:{id:"minecraft:globe_banner_pattern",Count:1b,tag:{pkEnhancedAdventureItemEntityToTrack:1b,pkMemorialExcerpt:1b,display:{Name:'{"text":"Memorial Excerpt","color":"yellow","italic":false}',Lore:['{"text":"Throw on the ground"}','{"text":"to memorize an aera"}']},HideFlags:33,Enchantments:[{}],CustomModelData:1611401}}}

# - Remove new offers and append array
data remove entity @s Offers.Recipes[-1]
data remove entity @s Offers.Recipes[-1]
data modify entity @s Offers.Recipes append from storage pk_enhanced_adventure:data Temp.Recipes[]