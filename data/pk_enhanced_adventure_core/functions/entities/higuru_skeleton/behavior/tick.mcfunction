# Store necessary data 
data modify storage pk_enhanced_adventure:data Temp.Entity set value {}
data modify storage pk_enhanced_adventure:data Temp.Entity.HurtTime set from entity @s HurtTime 

# Sounds
# - Randomizer
function pk_enhanced_adventure_core:helpers/random/uniform_0_1000
# - Hurting sound
execute if data storage pk_enhanced_adventure:data Temp.Entity{HurtTime:10s} run function pk_enhanced_adventure_core:entities/higuru_skeleton/sounds/hurt
# - Ambient sound
execute unless entity @s[scores={pk.enhanced_adventure.sound_delay=0}] run scoreboard players remove @s pk.enhanced_adventure.sound_delay 1
execute if score $out pk.enhanced_adventure.random matches ..10 unless entity @s[scores={pk.enhanced_adventure.sound_delay=1..}] if data storage pk_enhanced_adventure:data Temp.Entity{HurtTime:0s} run function pk_enhanced_adventure_core:entities/higuru_skeleton/sounds/ambient