# Add data and team to the villager
team join PKHiddenName @s
data merge entity @s {Tags:["pk_enhanced_adventure_mob","pk_villager","pk_alchemist","pk_hidden_name"],VillagerData:{profession:"cleric",level:1,type:"swamp"},CustomName:'"Alchemist"',Xp:1,Offers:{Recipes:[]},ArmorItems:[{},{},{},{id:"minecraft:mangrove_propagule",Count:1b}],ArmorDropChances:[0.085f,0.085f,0.085f,0f]}

# Set level and offers
function pk_enhanced_adventure_core:entities/villager/alchemist/reach_level/1

# Animations
playsound minecraft:block.brewing_stand.brew ambient @a ~ ~ ~ 1 0.64
playsound minecraft:block.conduit.activate ambient @a ~ ~ ~ 1 1.24
playsound minecraft:entity.villager.celebrate ambient @a ~ ~ ~ 1 1
particle minecraft:spore_blossom_air ~ ~ ~ 1 1 1 0.01 20