tag @s add pk_current_player
execute as @e[type=item,tag=!pk_souls_magnetisation_exclude,distance=0.1..7] at @s run function pk_enhanced_adventure_core:mechanics/bewitchments/souls_magnetisation/item/attract
tag @s remove pk_current_player