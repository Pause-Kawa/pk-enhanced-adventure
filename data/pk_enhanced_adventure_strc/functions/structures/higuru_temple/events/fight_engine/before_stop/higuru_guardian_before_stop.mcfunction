# Remove bossbar
execute if score %pk_enhanced_adventure_higuru_guardian_bossbar pk.common.value matches 1 run bossbar set higuru_guardian_1 visible false
execute if score %pk_enhanced_adventure_higuru_guardian_bossbar pk.common.value matches 2 run bossbar set higuru_guardian_2 visible false
execute if score %pk_enhanced_adventure_higuru_guardian_bossbar pk.common.value matches 3 run bossbar set higuru_guardian_3 visible false
scoreboard players remove %pk_enhanced_adventure_higuru_guardian_bossbar pk.common.value 1

# Remove higuru guardian relative entity
execute positioned ~-40 ~-2 -40 run tp @e[type=#skeletons,tag=pk_higuru_skeleton,dx=80,dy=50,dz=80] ~ ~-1000 ~
execute positioned ~-40 ~-2 -40 run tp @e[type=#skeletons,tag=pk_higuru_guardian_clone,dx=80,dy=50,dz=80] ~ ~-1000 ~

# Animations
playsound entity.wither.death hostile @a[distance=..50] ~ ~ ~ 0.5 0.8
playsound minecraft:entity.allay.ambient_without_item ambient @a[distance=..50] ~ ~ ~ 1 0.8