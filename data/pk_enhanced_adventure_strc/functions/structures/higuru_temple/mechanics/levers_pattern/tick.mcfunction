execute if entity @s[tag=pk_powered] if block ~ ~ ~ #minecraft:buttons[powered=false] run tag @s remove pk_powered
execute if entity @s[tag=!pk_powered] if block ~ ~ ~ #minecraft:buttons[powered=true] run function pk_enhanced_adventure_strc:structures/higuru_temple/mechanics/levers_pattern/check_pattern