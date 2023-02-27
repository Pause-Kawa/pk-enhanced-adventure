# Get dx, dy and dz (scale of 1000)
execute store result score %pk_entity_x pk.common.value run data get storage pk_enhanced_adventure:data Temp.Motion[0] 1000
execute store result score %pk_entity_y pk.common.value run data get storage pk_enhanced_adventure:data Temp.Motion[1] 1000
execute store result score %pk_entity_z pk.common.value run data get storage pk_enhanced_adventure:data Temp.Motion[2] 1000
# Calculate dx², dy² and dz²
scoreboard players operation %pk_entity_x pk.common.value *= %pk_entity_x pk.common.value
scoreboard players operation %pk_entity_y pk.common.value *= %pk_entity_y pk.common.value
scoreboard players operation %pk_entity_z pk.common.value *= %pk_entity_z pk.common.value
# Sum the three results
scoreboard players operation %pk_math_input pk.common.value = %pk_entity_x pk.common.value
scoreboard players operation %pk_math_input pk.common.value += %pk_entity_z pk.common.value
scoreboard players operation %pk_math_input pk.common.value += %pk_entity_y pk.common.value
# Calculate the square of the sum
function pk_enhanced_adventure_core:helpers/math/sqrt/calculate