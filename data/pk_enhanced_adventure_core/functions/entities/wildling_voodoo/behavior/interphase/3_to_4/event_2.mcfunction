data merge entity @s {Invulnerable:0b,NoGravity:0b}
tag @s remove pk_use_bow
tag @s add pk_use_axe
function pk_enhanced_adventure_core:entities/wildling_voodoo/helpers/set_equipment
playsound minecraft:entity.ravager.roar hostile @a[distance=..50] ~ ~ ~ 1 0.8
attribute @s generic.movement_speed base set 0.3
tag @s remove pk_in_interphase