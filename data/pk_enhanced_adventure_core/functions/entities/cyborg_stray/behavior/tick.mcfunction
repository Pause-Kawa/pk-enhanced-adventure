# Store necessary data 
data modify storage pk_enhanced_adventure:data Temp.Entity.HurtTime set from entity @s HurtTime

# Will need to change this process with the new execute on target function
execute if entity @s[tag=pk_use_pickaxe,scores={pk.enhanced_adventure.weapon_switch.delay=0}] if entity @p[distance=5..15] run function pk_enhanced_adventure_core:entities/cyborg_stray/behavior/weapon_switch/crossbow
execute if entity @s[tag=pk_use_crossbow,scores={pk.enhanced_adventure.weapon_switch.delay=0}] if entity @p[distance=..5] run function pk_enhanced_adventure_core:entities/cyborg_stray/behavior/weapon_switch/pickaxe
execute if entity @s[tag=pk_use_crossbow,scores={pk.enhanced_adventure.weapon_switch.delay=0}] if entity @p[distance=20..] run function pk_enhanced_adventure_core:entities/cyborg_stray/behavior/weapon_switch/pickaxe
# Stop the entity when close enough to shot
execute if entity @p[distance=5..15] run attribute @s generic.movement_speed base set 0

# Shot
execute if entity @s[tag=pk_use_crossbow,scores={pk.enhanced_adventure.delay=0}] if entity @p[distance=5..15,gamemode=!creative] run function pk_enhanced_adventure_core:entities/cyborg_stray/behavior/shot/check_los

# Invulnerable to arrows
execute positioned ~ ~1 ~ as @e[type=#arrows,tag=!pk_deflected,distance=..3.5] at @s run function pk_enhanced_adventure_core:entities/cyborg_stray/behavior/remove_arrow

# Bring back the movement speed if too close (using pickaxe) or too far to shot
execute unless entity @p[distance=5..15] run attribute @s generic.movement_speed base set 0.25

# Reduce both delay scores
scoreboard players remove @s[tag=pk_use_crossbow,scores={pk.enhanced_adventure.delay=1..}] pk.enhanced_adventure.delay 1
scoreboard players remove @s[scores={pk.enhanced_adventure.weapon_switch.delay=1..}] pk.enhanced_adventure.weapon_switch.delay 1

# Sounds
# - Randomizer
function pk_enhanced_adventure_core:helpers/random/uniform_0_1000
# - Ambient sound
scoreboard players remove @s[scores={pk.enhanced_adventure.sound_delay=1..}] pk.enhanced_adventure.sound_delay 1
execute if score $out pk.enhanced_adventure.random matches ..10 unless entity @s[scores={pk.enhanced_adventure.sound_delay=1..}] if data storage pk_enhanced_adventure:data Temp.Entity{HurtTime:0s} run function pk_enhanced_adventure_core:entities/cyborg_stray/sounds/ambient
# - Hurting sound
execute if data storage pk_enhanced_adventure:data Temp.Entity{HurtTime:10s} run function pk_enhanced_adventure_core:entities/cyborg_stray/sounds/hurt