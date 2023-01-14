# Summon shield
summon creeper ~ ~-0.5 ~ {NoGravity:1b,Silent:1b,Invulnerable:1b,NoAI:1b,powered:1b,ExplosionRadius:0b,Tags:["pk_enhanced_adventure_mob","pk_higuru_guardian_shield_part","pk_higuru_guardian_fight_relative"],ActiveEffects:[{Id:14,Amplifier:1b,Duration:2147483647,ShowParticles:1b}]}
summon creeper ~ ~0.5 ~ {NoGravity:1b,Silent:1b,Invulnerable:1b,NoAI:1b,powered:1b,ExplosionRadius:0b,Tags:["pk_enhanced_adventure_mob","pk_higuru_guardian_shield_part","pk_higuru_guardian_fight_relative"],ActiveEffects:[{Id:14,Amplifier:1b,Duration:2147483647,ShowParticles:1b}]}
summon creeper ~ ~1.5 ~ {NoGravity:1b,Silent:1b,Invulnerable:1b,NoAI:1b,powered:1b,ExplosionRadius:0b,Tags:["pk_enhanced_adventure_mob","pk_higuru_guardian_shield_part","pk_higuru_guardian_fight_relative"],ActiveEffects:[{Id:14,Amplifier:1b,Duration:2147483647,ShowParticles:1b}]}
# Animations
playsound entity.wither.shoot ambient @a[distance=..50] ~ ~ ~ 1 1
playsound entity.ravager.celebrate ambient @a[distance=..50] ~ ~ ~ 1 0.8
particle portal ~ ~1 ~ 0.5 0.5 0.5 0.1 20
particle soul_fire_flame ~ ~1 ~ 0.5 0.5 0.5 0.1 50
# Change data and score
data merge entity @s {Motion:[0d,0d,0d],NoAI:0b}
execute at @e[type=marker,tag=pk_fight_engine_boss_room,limit=1,distance=..50] run tp @s ~ ~2 ~ 
effect clear @s invisibility
tag @s remove pk_use_bow
tag @s add pk_use_axe
function pk_enhanced_adventure_core:entities/higuru_guardian/helpers/set_equipment
data merge entity @s {Motion:[0d,0d,0d],NoAI:0b,HandItems:[]}
scoreboard players set @s pk.enhanced_adventure.boss.shield_level 3

# Stop the current interphase
tag @s remove pk_in_interphase