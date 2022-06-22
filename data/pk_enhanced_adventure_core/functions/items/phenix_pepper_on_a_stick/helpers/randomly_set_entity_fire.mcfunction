function pk_enhanced_adventure_core:helpers/random/uniform_0_1000
# Set fire
execute if score $out pk.enhanced_adventure.random matches ..100 run data modify entity @s Fire set value 100s
# Manually hurt to deal extra damage (modify Health data doesn't work on wolf)
execute if score $out pk.enhanced_adventure.random matches ..50 unless entity @s[type=wolf] run function pk_enhanced_adventure_core:items/phenix_pepper_on_a_stick/helpers/hurt
# Make snow golem melt
execute if score $out pk.enhanced_adventure.random matches ..100 if entity @s[type=minecraft:snow_golem] run function pk_enhanced_adventure_core:items/phenix_pepper_on_a_stick/helpers/melt_snow_golem