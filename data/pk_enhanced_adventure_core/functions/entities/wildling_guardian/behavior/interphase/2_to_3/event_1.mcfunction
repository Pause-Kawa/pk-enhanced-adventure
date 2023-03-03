# Change data
data merge entity @s {Invulnerable:1b,NoGravity:1b,NoAI:1b,HandItems:[],ArmorItems:[]}
effect give @s invisibility 1000 1 true
# Animations
playsound entity.illusioner.mirror_move hostile @a[distance=..50] ~ ~ ~ 1 0.8
particle reverse_portal ~ ~1 ~ 0.5 0.5 0.5 0.1 20
# Change position
execute at @e[type=marker,tag=pk_fight_engine_boss_room,limit=1,distance=..50] run tp @s ~ ~-4 ~