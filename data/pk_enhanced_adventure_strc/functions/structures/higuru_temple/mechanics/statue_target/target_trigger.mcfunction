# Search relative event marker
execute store result score %pk_temp pk.enhanced_adventure.trigger.value run scoreboard players get @s pk.enhanced_adventure.trigger.value
execute positioned ~-40 -64 ~-40 as @e[type=marker,tag=pk_higuru_temple_marker,tag=pk_target_event,dx=80,dy=512,dz=80] if score @s pk.enhanced_adventure.trigger.value = %pk_temp pk.enhanced_adventure.trigger.value at @s run function pk_enhanced_adventure_strc:structures/higuru_temple/mechanics/statue_target/event_increment

# Animations
setblock ~ ~-1 ~ soul_soil
setblock ~ ~ ~ soul_fire
execute as @a[distance=..36] at @s run playsound block.note_block.pling ambient @s ~ ~ ~ 0.4 1.8
execute as @a[distance=..36] at @s run playsound item.firecharge.use ambient @s ~ ~ ~ 0.4 1

# Remove target
kill @s