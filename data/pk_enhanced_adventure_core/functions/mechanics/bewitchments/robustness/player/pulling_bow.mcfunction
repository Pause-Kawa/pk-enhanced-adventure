# Check pulling delay
execute if entity @s[scores={pk.enhanced_adventure.robustness.delay=40}] run function pk_enhanced_adventure_core:mechanics/bewitchments/robustness/player/pulled_long_enough

# Animations
execute if entity @s[tag=pk_has_robustness_boost] run function pk_enhanced_adventure_core:mechanics/bewitchments/robustness/player/pulling_robustness_animations

# Increment delay and add the relative tag
scoreboard players add @s pk.enhanced_adventure.robustness.delay 1
tag @s remove pk_pulling_robustness_bow
tag @s add pk_pulled_robustness_bow_on_previous_tick