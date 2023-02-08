# Search relative inner doors and open them
execute store result score %pk_temp pk.enhanced_adventure.trigger.value run scoreboard players get @s pk.enhanced_adventure.trigger.value
execute positioned ~-40 -64 ~-40 as @e[type=marker,tag=pk_higuru_temple_marker,tag=pk_inner_door,dx=80,dy=512,dz=80,predicate=pk_enhanced_adventure_strc:id_match/trigger_value] at @s run function pk_enhanced_adventure_strc:structures/higuru_temple/mechanics/inner_door/dispatcher_open

# Remove lever
function pk_enhanced_adventure_strc:structures/higuru_temple/mechanics/statue_lever/lever_remove