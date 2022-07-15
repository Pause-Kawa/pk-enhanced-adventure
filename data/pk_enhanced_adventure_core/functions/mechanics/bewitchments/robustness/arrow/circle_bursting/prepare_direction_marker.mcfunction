tag @s add pk_current_arrow
execute if score %pk_temp pk.enhanced_adventure.robustness.delay matches 3 run tag @s add pk_done
summon marker ~ ~ ~ {Tags:["pk_current_marker"]}
execute as @e[type=marker,tag=pk_current_marker] at @s run function pk_enhanced_adventure_core:mechanics/bewitchments/robustness/arrow/circle_bursting/as_direction_marker
tag @s remove pk_current_arrow