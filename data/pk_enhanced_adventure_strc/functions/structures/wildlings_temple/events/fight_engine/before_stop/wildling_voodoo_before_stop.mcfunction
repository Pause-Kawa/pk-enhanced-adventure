# Remove bossbar
bossbar set wildling_voodoo_1 players
bossbar set wildling_voodoo_2 players
bossbar set wildling_voodoo_3 players
scoreboard players remove %pk_enhanced_adventure_wildling_voodoo_bossbar pk.common.value 1

# Remove Wildling Voodoo relative entity
execute positioned ~-40 ~-2 -40 run tp @e[type=#skeletons,tag=pk_wildling_skeleton,dx=80,dy=50,dz=80] ~ ~-1000 ~
execute positioned ~-40 ~-2 -40 run tp @e[type=#skeletons,tag=pk_wildling_fraudster,dx=80,dy=50,dz=80] ~ ~-1000 ~

# Animations
playsound entity.wither.death hostile @a[distance=..50] ~ ~ ~ 0.5 0.8
playsound minecraft:entity.allay.ambient_without_item ambient @a[distance=..50] ~ ~ ~ 1 0.8