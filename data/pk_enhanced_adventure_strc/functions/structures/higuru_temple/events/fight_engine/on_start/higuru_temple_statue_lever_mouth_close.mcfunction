# Close statue lever mouth
execute store result score %pk_temp pk.enhanced_adventure.trigger.value run data get storage pk_enhanced_adventure:data Temp.Engine.TriggerValue
execute as @e[type=marker,tag=pk_higuru_temple_marker,tag=pk_lever,distance=..8] if score %pk_temp pk.enhanced_adventure.trigger.value = @s pk.enhanced_adventure.trigger.value at @s run function pk_enhanced_adventure_strc:structures/higuru_temple/mechanics/statue_lever/mouth_close