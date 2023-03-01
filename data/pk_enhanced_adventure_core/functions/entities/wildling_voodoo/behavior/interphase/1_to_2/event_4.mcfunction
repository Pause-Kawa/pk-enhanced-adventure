# Change data
data merge entity @s {Invulnerable:0b,NoGravity:0b,NoAI:0b}
tag @s remove pk_use_bow
tag @s add pk_use_axe
function pk_enhanced_adventure_core:entities/wildling_voodoo/helpers/set_equipment
effect clear @s invisibility
attribute @s generic.attack_damage base set 6
# Summon fraudsters
execute at @e[type=marker,tag=pk_boss_room_corner,tag=!pk_chosen_corner,distance=..50] run function pk_enhanced_adventure_core:entities/wildling_fraudster/summon
tag @e[type=marker,tag=pk_chosen_corner,distance=..50] remove pk_chosen_corner
# Animations
execute at @e[type=wither_skeleton,distance=..50] unless entity @s[tag=!pk_wildling_voodoo,tag=!pk_wildling_fraudster] run playsound entity.wither.shoot ambient @a[distance=..50] ~ ~ ~ 0.5 1
execute at @e[type=wither_skeleton,distance=..50] unless entity @s[tag=!pk_wildling_voodoo,tag=!pk_wildling_fraudster] run particle soul_fire_flame ~ ~1 ~ 0.5 0.5 0.5 0.1 50
# Stop the current interphase
tag @s remove pk_in_interphase