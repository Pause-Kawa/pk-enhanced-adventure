# Summon Wildling Fraudster
summon wither_skeleton ~ ~ ~ {Silent:1b,Team:"PKHiddenName",Tags:["pk_enhanced_adventure_mob","pk_wildling_fraudster","wildling_voodoo_fight_relative","pk_use_axe","pk_hidden_name","pk_wildling_fraudster_current"],DeathLootTable:"",Health:1000f,CustomName:'{"text":"Wildling Voodoo","italic":false}',HandItems:[{id:"minecraft:golden_axe",tag:{Enchantments:[{id:"minecraft:unbreaking",lvl:2s}]},Count:1b},{id:"minecraft:shield",Count:1b,tag:{BlockEntityTag:{Base:12,Patterns:[{Color:9,Pattern:"ss"},{Color:14,Pattern:"cbo"},{Color:4,Pattern:"bts"},{Color:4,Pattern:"tts"},{Color:4,Pattern:"flo"}]},Enchantments:[{id:"minecraft:unbreaking",lvl:3s}],display:{Name:'{"text":"Wildlings Shield","italic":false}'}}}],HandDropChances:[0F,0F],ArmorItems:[{},{},{id:"minecraft:netherite_chestplate",Count:1b},{id:"minecraft:brewing_stand",Count:1b,tag:{HideFlags:32,Enchantments:[{}]}}],ArmorDropChances:[0F,0F,0F,0F],Attributes:[{Name:"minecraft:generic.max_health",Base:1000},{Name:"minecraft:generic.attack_damage",Base:5},{Name:"minecraft:generic.follow_range",Base:50}]}

# Define the health score
scoreboard players set @e[type=wither_skeleton,tag=pk_wildling_fraudster_current,distance=..0.1] pk.enhanced_adventure.boss.health 3
scoreboard players set @e[type=wither_skeleton,tag=pk_wildling_fraudster_current,distance=..0.1] pk.enhanced_adventure.weapon_switch.delay 0
tag @e[type=wither_skeleton,tag=pk_wildling_fraudster_current,distance=..0.1] remove pk_wildling_fraudster_current