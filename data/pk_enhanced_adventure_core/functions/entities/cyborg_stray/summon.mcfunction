# Summon Cyborg Stray
summon stray ~ ~ ~ {Silent:1b,Team:"PKHiddenName",Tags:["pk_enhanced_adventure_mob","pk_cyborg_stray","pk_hidden_name","pk_current_entity","pk_use_pickaxe"],PersistenceRequired:1b,HandItems:[{id:"minecraft:iron_pickaxe",Count:1b},{id:"minecraft:iron_pickaxe",Count:1b}],ArmorItems:[{},{},{id:"minecraft:leather_chestplate",Count:1b,tag:{Trim:{material:"minecraft:copper",pattern:"minecraft:snout"},display:{color:14566982}}},{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYzI1YzEzNGE4N2MzMDdkYmRkNjhlNTU3ZTU1NGY2ZDVlOThkYmEzNjQ3YjczMGZlMTg0MjdlMTcyNTgwYTRhOSJ9fX0="}]},Id:[I;-367582290,1912620295,-1755097237,226642268]},display:{Name:'{"text":"Cyborg Stray Head"}'}}}],ArmorDropChances:[0f,0f,0f,0f]}

# Initialize
scoreboard players set @e[type=stray,tag=pk_current_entity,distance=..0.1] pk.enhanced_adventure.delay 0
scoreboard players set @e[type=stray,tag=pk_current_entity,distance=..0.1] pk.enhanced_adventure.weapon_switch.delay 0
tag @s remove pk_current_entity