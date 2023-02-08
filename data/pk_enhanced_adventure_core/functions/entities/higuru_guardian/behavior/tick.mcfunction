# Store necessary data 
data modify storage pk_enhanced_adventure:data Temp.Entity set from entity @s {}
execute store result score @s pk.enhanced_adventure.boss.health run data get storage pk_enhanced_adventure:data Temp.Entity.Health

# Common behavior 
# ----------------------------------------
# Weapon switch
execute unless entity @s[tag=pk_in_interphase] unless entity @s[scores={pk.enhanced_adventure.boss.phase=3..4}] run function pk_enhanced_adventure_core:entities/higuru_guardian/behavior/weapon_switch/tick
# Remove arrow fire state
execute anchored eyes positioned ^ ^ ^ as @e[type=arrow,distance=..0.5] run data modify entity @s Fire set value -20
# Reinforcement
execute if entity @s[tag=!pk_in_interphase] run function pk_enhanced_adventure_core:entities/higuru_guardian/behavior/reinforcement/tick
# Update bossbar visibility for players around
execute if entity @s[tag=pk_bossbar_1] run function pk_enhanced_adventure_core:entities/higuru_guardian/bossbar/1/update_players
execute if entity @s[tag=pk_bossbar_2] run function pk_enhanced_adventure_core:entities/higuru_guardian/bossbar/2/update_players
execute if entity @s[tag=pk_bossbar_3] run function pk_enhanced_adventure_core:entities/higuru_guardian/bossbar/3/update_players
# Hurt
execute if data storage pk_enhanced_adventure:data Temp.Entity{HurtTime:10s} run function pk_enhanced_adventure_core:entities/higuru_guardian/behavior/hurt/trigger

# Phase specific
# ----------------------------------------
# Interphase 1 - 2
execute if entity @s[scores={pk.enhanced_adventure.boss.phase=1,pk.enhanced_adventure.boss.health=101..200}] run function pk_enhanced_adventure_core:entities/higuru_guardian/behavior/interphase/1_to_2/init
execute if entity @s[tag=pk_in_interphase,scores={pk.enhanced_adventure.boss.phase=2}] run function pk_enhanced_adventure_core:entities/higuru_guardian/behavior/interphase/1_to_2/tick
# Interphase 2 - 3
execute if entity @s[scores={pk.enhanced_adventure.boss.phase=2,pk.enhanced_adventure.boss.health=..100}] run function pk_enhanced_adventure_core:entities/higuru_guardian/behavior/interphase/2_to_3/init
execute if entity @s[tag=pk_in_interphase,scores={pk.enhanced_adventure.boss.phase=3}] run function pk_enhanced_adventure_core:entities/higuru_guardian/behavior/interphase/2_to_3/tick
# Phase 3
execute if entity @s[tag=!pk_in_interphase,scores={pk.enhanced_adventure.boss.phase=3}] run function pk_enhanced_adventure_core:entities/higuru_guardian/behavior/phase/3/tick
# Interphase 3 - 4
execute if entity @s[tag=pk_in_interphase,scores={pk.enhanced_adventure.boss.phase=4}] run function pk_enhanced_adventure_core:entities/higuru_guardian/behavior/interphase/3_to_4/tick

# Sounds
# ----------------------------------------
# - Randomizer
function pk_enhanced_adventure_core:helpers/random/uniform_0_1000
# - Ambient sound
scoreboard players remove @s[scores={pk.enhanced_adventure.sound_delay=1..}] pk.enhanced_adventure.sound_delay 1
execute if score $out pk.enhanced_adventure.random matches ..10 unless entity @s[scores={pk.enhanced_adventure.sound_delay=1..}] if data storage pk_enhanced_adventure:data Temp.Entity{HurtTime:0s} run function pk_enhanced_adventure_core:entities/higuru_guardian/sounds/ambient