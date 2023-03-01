function pk_enhanced_adventure_strc:_dev/replace/fill_replace
scoreboard players remove %pk_temp_x pk.common.value 1
execute if score %pk_temp_x pk.common.value matches 1.. positioned ~20 ~ ~ run function pk_enhanced_adventure_strc:_dev/replace/fill_recursive_x