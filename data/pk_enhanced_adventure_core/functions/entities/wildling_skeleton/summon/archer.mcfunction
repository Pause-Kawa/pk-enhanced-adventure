function pk_enhanced_adventure_core:helpers/random/uniform_0_1000

execute if score $out pk.enhanced_adventure.random matches ..500 run summon skeleton ~ ~ ~ {Silent:1b,Team:"PKHiddenName",Tags:["pk_enhanced_adventure_mob","pk_wildling_skeleton","pk_wildling_skeleton_archer","pk_hidden_name"],DeathLootTable:"pk_enhanced_adventure_core:entities/wildling_skeleton",Health:36f,CustomName:'{"text":"Wildling Skeleton","italic":false}',HandItems:[{id:"minecraft:bow",Count:1b,tag:{Enchantments:[{id:"minecraft:power",lvl:3s},{id:"minecraft:punch",lvl:1s}]}},{id:"minecraft:shield",Count:1b,tag:{BlockEntityTag:{Base:12,Patterns:[{Color:9,Pattern:"ss"},{Color:14,Pattern:"cbo"},{Color:4,Pattern:"bts"},{Color:4,Pattern:"tts"},{Color:4,Pattern:"flo"}]},display:{Name:'{"text":"Wildlings Shield","italic":false}'}}}],HandDropChances:[0.050F,0.050F],ArmorItems:[{},{},{},{id:"minecraft:dead_horn_coral_fan",Count:1b}],ArmorDropChances:[0.085f,0.085f,0.085f,0f],Attributes:[{Name:"minecraft:generic.max_health",Base:36},{Name:"minecraft:generic.attack_damage",Base:6}]}

execute if score $out pk.enhanced_adventure.random matches 501.. run summon skeleton ~ ~ ~ {Silent:1b,Team:"PKHiddenName",Tags:["pk_enhanced_adventure_mob","pk_wildling_skeleton","pk_wildling_skeleton_archer","pk_hidden_name"],DeathLootTable:"pk_enhanced_adventure_core:entities/wildling_skeleton",Health:36f,CustomName:'{"text":"Wildling Skeleton","italic":false}',HandItems:[{id:"minecraft:bow",Count:1b,tag:{Enchantments:[{id:"minecraft:power",lvl:3s},{id:"minecraft:punch",lvl:1s}]}},{id:"minecraft:shield",Count:1b,tag:{BlockEntityTag:{Base:12,Patterns:[{Color:9,Pattern:"ss"},{Color:14,Pattern:"cbo"},{Color:4,Pattern:"bts"},{Color:4,Pattern:"tts"},{Color:4,Pattern:"flo"}]},display:{Name:'{"text":"Wildlings Shield","italic":false}'}}}],HandDropChances:[0.050F,0.050F],ArmorItems:[{},{},{},{id:"minecraft:dead_fire_coral_fan",Count:1b}],ArmorDropChances:[0.085f,0.085f,0.085f,0f],Attributes:[{Name:"minecraft:generic.max_health",Base:36},{Name:"minecraft:generic.attack_damage",Base:6}]}