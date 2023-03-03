playsound entity.generic.explode ambient @a ~ ~ ~ 0.8 0.9
particle soul_fire_flame ~ ~ ~ 0.5 0.5 0.5 0.1 50
particle explosion ~ ~ ~ 0.5 0.5 0.5 0.1 4

execute positioned ~-1.5 ~-1.5 ~-1.5 as @e[type=wither_skeleton,tag=pk_wildling_guardian,dx=2,dy=2,dz=2,limit=1] run function pk_enhanced_adventure_core:entities/wildling_guardian/behavior/phase/3/reduce_shield_level

effect give @a[distance=..5] instant_damage 1 1
effect give @a[distance=..5] wither 5 2

kill @s