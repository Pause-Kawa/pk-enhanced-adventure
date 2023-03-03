function pk_enhanced_adventure_core:helpers/random/uniform_0_1000

execute if score $out pk.enhanced_adventure.random matches ..500 run function pk_enhanced_adventure_core:entities/wildling_guardian/behavior/phase/3/prepare_large_projectile
execute if score $out pk.enhanced_adventure.random matches 501.. run function pk_enhanced_adventure_core:entities/wildling_guardian/behavior/phase/3/prepare_small_projectile