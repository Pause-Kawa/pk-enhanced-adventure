# Released bow
execute if entity @s[tag=pk_pulled_robustness_bow_on_previous_tick,tag=!pk_pulling_robustness_bow] run function pk_enhanced_adventure_core:mechanics/bewitchments/robustness/player/released_bow

# Keep pulling bow
execute if entity @s[tag=pk_pulling_robustness_bow] run function pk_enhanced_adventure_core:mechanics/bewitchments/robustness/player/pulling_bow