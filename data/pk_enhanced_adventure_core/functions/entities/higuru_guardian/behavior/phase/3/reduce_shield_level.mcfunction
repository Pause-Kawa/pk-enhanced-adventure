effect give @s instant_damage 1 1
tp @e[type=creeper,tag=pk_higuru_guardian_shield_part,distance=..5,limit=1] ~ -1000 ~
scoreboard players remove @s pk.enhanced_adventure.boss.shield_level 1

playsound minecraft:entity.skeleton.hurt hostile @a[distance=..50] ~ ~ ~ 1 0.7
playsound minecraft:entity.wither.hurt hostile @a[distance=..50] ~ ~ ~ 0.5 0.8

execute if entity @s[scores={pk.enhanced_adventure.boss.shield_level=0}] run function pk_enhanced_adventure_core:entities/higuru_guardian/behavior/interphase/3_to_4/init