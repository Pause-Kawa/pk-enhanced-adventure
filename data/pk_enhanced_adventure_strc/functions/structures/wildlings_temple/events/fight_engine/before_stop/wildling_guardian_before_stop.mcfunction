# Remove bossbar
bossbar set wildling_guardian_1 players
bossbar set wildling_guardian_2 players
bossbar set wildling_guardian_3 players
scoreboard players remove %pk_enhanced_adventure_wildling_guardian_bossbar pk.common.value 1

# Remove Wildling Guardian relative entity
execute positioned ~-40 ~-2 -40 run tp @e[type=#skeletons,tag=pk_wildling_skeleton,dx=80,dy=50,dz=80] ~ ~-1000 ~
execute positioned ~-40 ~-2 -40 run tp @e[type=#skeletons,tag=pk_wildling_guardian_clone,dx=80,dy=50,dz=80] ~ ~-1000 ~

# Animations
playsound entity.wither.death hostile @a[distance=..50] ~ ~ ~ 0.5 0.8
playsound minecraft:entity.allay.ambient_without_item ambient @a[distance=..50] ~ ~ ~ 1 0.8