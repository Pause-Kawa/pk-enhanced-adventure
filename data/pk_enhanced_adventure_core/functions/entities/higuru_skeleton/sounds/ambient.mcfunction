scoreboard players set @s pk.enhanced_adventure.sound_delay 80
playsound minecraft:entity.skeleton.ambient hostile @a ~ ~ ~ 1 0.7
function pk_enhanced_adventure_core:helpers/random/uniform
execute if score $out pk.enhanced_adventure.random matches ..500 run playsound minecraft:block.note_block.xylophone hostile @a ~ ~ ~ 1 0.5
execute if score $out pk.enhanced_adventure.random matches 501.. run playsound minecraft:block.note_block.xylophone hostile @a ~ ~ ~ 1 0.6