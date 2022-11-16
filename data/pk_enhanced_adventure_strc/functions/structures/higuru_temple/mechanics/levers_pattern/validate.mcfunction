# Search relative event marker
execute store result score %pk_temp pk.enhanced_adventure.trigger.value run scoreboard players get @s pk.enhanced_adventure.trigger.value
execute positioned ~-40 -64 ~-40 as @e[type=marker,tag=pk_higuru_temple_marker,tag=pk_levers_pattern_event,dx=80,dy=512,dz=80] if score @s pk.enhanced_adventure.trigger.value = %pk_temp pk.enhanced_adventure.trigger.value at @s run function pk_enhanced_adventure_strc:structures/higuru_temple/mechanics/levers_pattern/event_trigger

# Animations
playsound item.firecharge.use ambient @a[distance=..50] ~ ~ ~ 1 1
particle soul_fire_flame ~ ~ ~ 0.2 0.2 0.2 0.001 10

# Remove marker
kill @s