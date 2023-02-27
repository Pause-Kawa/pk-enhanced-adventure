# Compute test
scoreboard players operation %pk_math_temp pk.common.value = %pk_math_output pk.common.value
scoreboard players operation %pk_math_temp pk.common.value += %pk_math_increment pk.common.value
scoreboard players operation %pk_math_temp pk.common.value *= %pk_math_temp pk.common.value
# Compare values
execute if score %pk_math_temp pk.common.value <= %pk_math_input pk.common.value run scoreboard players operation %pk_math_output pk.common.value += %pk_math_increment pk.common.value
# Execute recursive function
scoreboard players operation %pk_math_increment pk.common.value /= %pk_const_2 pk.common.value
execute if score %pk_math_increment pk.common.value matches 1.. run function pk_enhanced_adventure_core:helpers/math/sqrt/calculate_loop