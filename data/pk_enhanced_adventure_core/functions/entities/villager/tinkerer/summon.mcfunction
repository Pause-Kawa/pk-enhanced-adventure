# Summon Steam Worker  
summon villager ~ ~ ~ {Tags:["pk_enhanced_adventure_mob","pk_villager","pk_tinkerer","pk_hidden_name","pk_current_entity"],VillagerData:{profession:"minecraft:toolsmith",level:1,type:"minecraft:savanna"},CustomName:'"Tinkerer"',Xp:1,Offers:{Recipes:[]},ArmorItems:[{},{},{},{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:[I;-385331844,466109866,-1849554646,-1587364697],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZmU2NTUxNmQ4MWFjOTYzZGJjMjQ4NTEzOGRkZGNmOTQzZDdmNzIxMWUzN2VmZWNkNWE1ZmI4ZjVhZDQ5MjAifX19"}]}}}}],ArmorDropChances:[0.085f,0.085f,0.085f,0f]}
execute as @e[type=villager,tag=pk_current_entity,limit=1,sort=nearest,distance=..0.1] run function pk_enhanced_adventure_core:entities/villager/tinkerer/reach_level/1
tag @e[type=villager,tag=pk_current_entity,limit=1,sort=nearest,distance=..0.1] remove pk_current_entity