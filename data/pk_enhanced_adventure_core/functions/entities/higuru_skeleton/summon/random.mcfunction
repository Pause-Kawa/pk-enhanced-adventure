function pk_enhanced_adventure_core:helpers/random/uniform_0_1000
scoreboard players operation $out1 pk.enhanced_adventure.random = $out pk.enhanced_adventure.random

execute if score $out1 pk.enhanced_adventure.random matches ..500 run function pk_enhanced_adventure_core:entities/higuru_skeleton/summon/archer
execute if score $out1 pk.enhanced_adventure.random matches 501.. run function pk_enhanced_adventure_core:entities/higuru_skeleton/summon/axeman