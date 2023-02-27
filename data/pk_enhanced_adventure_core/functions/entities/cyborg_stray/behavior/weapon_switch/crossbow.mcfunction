tag @s add pk_use_crossbow
tag @s remove pk_use_pickaxe
scoreboard players set @s pk.enhanced_adventure.weapon_switch.delay 20
scoreboard players set @s pk.enhanced_adventure.delay 20
item replace entity @s weapon.mainhand with crossbow{ChargedProjectiles:[{id:"firework_rocket",Count:1b,tag:{display:{Name:'{"text":"Storm Dissipater","italic":false}'},HideFlags:33,pkStormDissipater:1b,Enchantments:[{}],CustomModelData:1611403}},{},{}],Charged:1b}
item replace entity @s weapon.offhand with air