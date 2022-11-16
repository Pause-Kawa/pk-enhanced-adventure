tag @s add pk_powered

scoreboard players set %pk_levers_pattern_check pk.common.value 0
execute if entity @s[predicate=pk_enhanced_adventure_strc:higuru_temple/levers_pattern/is_valid] run scoreboard players set %pk_levers_pattern_check pk.common.value 1

execute if score %pk_levers_pattern_check pk.common.value matches 1 run function pk_enhanced_adventure_strc:structures/higuru_temple/mechanics/levers_pattern/validate
execute if score %pk_levers_pattern_check pk.common.value matches 0 run function pk_enhanced_adventure_strc:structures/higuru_temple/mechanics/levers_pattern/deny