execute store success score $get_coordinates.within_262144 iris if entity @s[distance=..0.262144]

execute if score $get_coordinates.within_262144 iris matches 0 run scoreboard players add ${x} iris 262144
execute if score $get_coordinates.within_262144 iris matches 0 positioned ~0.262144 ~ ~ run function pk_enhanced_adventure_core:helpers/iris/get_coordinates/x/2
execute if score $get_coordinates.within_262144 iris matches 1 run function pk_enhanced_adventure_core:helpers/iris/get_coordinates/x/2