# Released bow
execute if entity @s[tag=pk_pulling_robustness_bow,advancements={pk_enhanced_adventure_core:interactions/pulling_robustness_bow=false}] run function pk_enhanced_adventure_core:mechanics/bewitchments/robustness/player/released_bow

# Keep pulling bow
execute if entity @s[advancements={pk_enhanced_adventure_core:interactions/pulling_robustness_bow=true}] run function pk_enhanced_adventure_core:mechanics/bewitchments/robustness/player/pulling_bow