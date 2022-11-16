# Search relative inner doors and open them
execute store result score %pk_temp pk.enhanced_adventure.trigger.value run scoreboard players get @s pk.enhanced_adventure.trigger.value
execute positioned ~-40 -64 ~-40 as @e[type=marker,tag=pk_higuru_temple_marker,tag=pk_inner_door,dx=80,dy=512,dz=80] if score @s pk.enhanced_adventure.trigger.value = %pk_temp pk.enhanced_adventure.trigger.value at @s run function pk_enhanced_adventure_strc:structures/higuru_temple/mechanics/inner_door/vertical_open

# Remove lever
setblock ~ ~-1 ~ soul_soil
setblock ~ ~ ~ soul_fire
playsound item.firecharge.use ambient @a[distance=..50] ~ ~ ~ 1 1
kill @s