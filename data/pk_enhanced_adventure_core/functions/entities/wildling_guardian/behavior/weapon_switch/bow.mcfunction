tag @s add pk_use_bow
tag @s remove pk_use_axe
scoreboard players set @s pk.enhanced_adventure.weapon_switch.delay 40
item replace entity @s weapon.mainhand with bow{tag:{Enchantments:[{id:"minecraft:power",lvl:2s},{id:"minecraft:unbreaking",lvl:2s},{id:"minecraft:punch",lvl:1s}]}}