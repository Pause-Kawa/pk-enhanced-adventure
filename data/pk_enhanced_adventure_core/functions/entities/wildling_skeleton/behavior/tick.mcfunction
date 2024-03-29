# Store necessary data 
data modify storage pk_enhanced_adventure:data Temp.Entity set from entity @s {}

# Sounds
# - Randomizer
function pk_enhanced_adventure_core:helpers/random/uniform_0_1000
# - Ambient sound
scoreboard players remove @s[scores={pk.enhanced_adventure.sound_delay=1..}] pk.enhanced_adventure.sound_delay 1
execute if score $out pk.enhanced_adventure.random matches ..10 unless entity @s[scores={pk.enhanced_adventure.sound_delay=1..}] if data storage pk_enhanced_adventure:data Temp.Entity{HurtTime:0s} run function pk_enhanced_adventure_core:entities/wildling_skeleton/sounds/ambient
# - Hurting sound
execute if data storage pk_enhanced_adventure:data Temp.Entity{HurtTime:10s} run function pk_enhanced_adventure_core:entities/wildling_skeleton/sounds/hurt