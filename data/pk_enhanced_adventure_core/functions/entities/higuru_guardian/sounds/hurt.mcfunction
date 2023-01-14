playsound minecraft:entity.skeleton.hurt hostile @a[distance=..50] ~ ~ ~ 1 0.7
playsound minecraft:entity.wither.hurt hostile @a[distance=..50] ~ ~ ~ 0.5 0.8
function pk_enhanced_adventure_core:helpers/random/uniform_0_1000
execute if score $out pk.enhanced_adventure.random matches ..500 run playsound minecraft:block.note_block.xylophone hostile @a[distance=..50] ~ ~ ~ 1 0.7
execute if score $out pk.enhanced_adventure.random matches 501.. run playsound minecraft:block.note_block.xylophone hostile @a[distance=..50] ~ ~ ~ 1 0.8