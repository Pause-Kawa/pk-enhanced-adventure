# Run animations depending on the arrow's traveling delay
scoreboard players operation %pk_temp pk.enhanced_adventure.robustness.delay = @s pk.enhanced_adventure.robustness.delay
execute if score %pk_temp pk.enhanced_adventure.robustness.delay matches 1 run function pk_enhanced_adventure_core:mechanics/bewitchments/robustness/arrow/circle_bursting/prepare_direction_marker
execute if score %pk_temp pk.enhanced_adventure.robustness.delay matches 3 run function pk_enhanced_adventure_core:mechanics/bewitchments/robustness/arrow/circle_bursting/prepare_direction_marker

# Increment delay
scoreboard players add @s pk.enhanced_adventure.robustness.delay 1