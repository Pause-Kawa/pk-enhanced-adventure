# Store necessary data 
data modify storage pk_enhanced_adventure:data Temp.Entity set from entity @s {}

# Disappear when health score reaches 0
execute if entity @s[scores={pk.enhanced_adventure.boss.health=0}] run function pk_enhanced_adventure_core:entities/wildling_guardian_clone/behavior/disappear

# Weapon switch
function pk_enhanced_adventure_core:entities/wildling_guardian/behavior/weapon_switch/tick

# Remove arrow fire state
execute anchored eyes positioned ^ ^ ^ as @e[type=arrow,distance=..0.5] run data modify entity @s Fire set value -20

# - Randomizer
function pk_enhanced_adventure_core:helpers/random/uniform_0_1000
# - Ambient sound
scoreboard players remove @s[scores={pk.enhanced_adventure.sound_delay=1..}] pk.enhanced_adventure.sound_delay 1
execute if score $out pk.enhanced_adventure.random matches ..10 unless entity @s[scores={pk.enhanced_adventure.sound_delay=1..}] if data storage pk_enhanced_adventure:data Temp.Entity{HurtTime:0s} run function pk_enhanced_adventure_core:entities/wildling_guardian_clone/sounds/ambient
# - Hurting event
execute if data storage pk_enhanced_adventure:data Temp.Entity{HurtTime:10s} run function pk_enhanced_adventure_core:entities/wildling_guardian_clone/behavior/hurt