execute store result score %pk_temp pk.common.value run xp query @s levels
execute if score %pk_temp pk.common.value matches 1 run function pk_enhanced_adventure_core:mechanics/bewitchments/allegiance/drop_experience/level_1
execute if score %pk_temp pk.common.value matches 2 run function pk_enhanced_adventure_core:mechanics/bewitchments/allegiance/drop_experience/level_2
execute if score %pk_temp pk.common.value matches 3 run function pk_enhanced_adventure_core:mechanics/bewitchments/allegiance/drop_experience/level_3
execute if score %pk_temp pk.common.value matches 4 run function pk_enhanced_adventure_core:mechanics/bewitchments/allegiance/drop_experience/level_4
execute if score %pk_temp pk.common.value matches 5 run function pk_enhanced_adventure_core:mechanics/bewitchments/allegiance/drop_experience/level_5
execute if score %pk_temp pk.common.value matches 6 run function pk_enhanced_adventure_core:mechanics/bewitchments/allegiance/drop_experience/level_6
execute if score %pk_temp pk.common.value matches 7 run function pk_enhanced_adventure_core:mechanics/bewitchments/allegiance/drop_experience/level_7
execute if score %pk_temp pk.common.value matches 8 run function pk_enhanced_adventure_core:mechanics/bewitchments/allegiance/drop_experience/level_8
execute if score %pk_temp pk.common.value matches 9 run function pk_enhanced_adventure_core:mechanics/bewitchments/allegiance/drop_experience/level_9
execute if score %pk_temp pk.common.value matches 10 run function pk_enhanced_adventure_core:mechanics/bewitchments/allegiance/drop_experience/level_10
execute if score %pk_temp pk.common.value matches 11 run function pk_enhanced_adventure_core:mechanics/bewitchments/allegiance/drop_experience/level_11
execute if score %pk_temp pk.common.value matches 12 run function pk_enhanced_adventure_core:mechanics/bewitchments/allegiance/drop_experience/level_12
execute if score %pk_temp pk.common.value matches 13 run function pk_enhanced_adventure_core:mechanics/bewitchments/allegiance/drop_experience/level_13
execute if score %pk_temp pk.common.value matches 14 run function pk_enhanced_adventure_core:mechanics/bewitchments/allegiance/drop_experience/level_14
execute if score %pk_temp pk.common.value matches 15.. run function pk_enhanced_adventure_core:mechanics/bewitchments/allegiance/drop_experience/level_max