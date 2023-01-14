# Teleport to random corner
tag @e[type=marker,tag=pk_boss_room_corner,limit=1,sort=random,distance=..50] add pk_chosen_corner
tp @s @e[type=marker,tag=pk_chosen_corner,distance=..50,limit=1]
tag @e[type=marker,tag=pk_chosen_corner,distance=..50] remove pk_chosen_corner

# Animations
execute at @s run playsound entity.illusioner.mirror_move hostile @a[distance=..50] ~ ~ ~ 1 0.8
execute at @s run particle soul_fire_flame ~ ~1 ~ 0.5 0.5 0.5 0.1 50
particle reverse_portal ~ ~1 ~ 0.5 0.5 0.5 0.1 20