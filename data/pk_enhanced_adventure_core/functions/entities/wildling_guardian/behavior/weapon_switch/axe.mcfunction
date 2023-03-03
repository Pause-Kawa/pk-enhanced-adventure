tag @s add pk_use_axe
tag @s remove pk_use_bow
scoreboard players set @s pk.enhanced_adventure.weapon_switch.delay 40
item replace entity @s weapon.mainhand with golden_axe{tag:{Enchantments:[{id:"minecraft:sharpness",lvl:2s},{id:"minecraft:unbreaking",lvl:2s}]}}