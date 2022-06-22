# Calculate chance to damage depending on Unbreaking enchantment level ((100 / level + 1)%) : on base 1000
scoreboard players add %pk_temp_unbreaking_lvl pk.common.value 1
scoreboard players operation %pk_temp_damage_chance pk.common.value = %pk_const_1000 pk.common.value
scoreboard players operation %pk_temp_damage_chance pk.common.value /= %pk_temp_unbreaking_lvl pk.common.value
function pk_enhanced_adventure_core:helpers/random/uniform_0_1000
execute if score $out pk.enhanced_adventure.random <= %pk_temp_damage_chance pk.common.value run function pk_enhanced_adventure_core:helpers/item_damage/should_item_break