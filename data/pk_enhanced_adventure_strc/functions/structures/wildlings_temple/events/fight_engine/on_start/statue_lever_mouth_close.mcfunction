# Close statue lever mouth
execute store result score %pk_temp pk.enhanced_adventure.trigger.value run data get storage pk_enhanced_adventure:data Temp.Engine.TriggerValue
execute as @e[type=marker,tag=pk_wildling_temple_marker,tag=pk_lever,distance=..8,predicate=pk_enhanced_adventure_strc:id_match/trigger_value] at @s run function pk_enhanced_adventure_strc:structures/wildlings_temple/mechanics/statue_lever/mouth_close