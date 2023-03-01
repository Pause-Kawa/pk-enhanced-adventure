# Tick Dispatcher for structures Markers (tag pk_enhanced_adventure_marker)

# Common to all structures
# - Common Dispatcher
execute if entity @s[tag=pk_common_marker] run function pk_enhanced_adventure_strc:common_structures/dispatchers/marker

# Wildlings Temple
execute if entity @s[tag=pk_wildlings_temple_marker,tag=!pk_not_ticked] run function pk_enhanced_adventure_strc:structures/wildlings_temple/dispatchers/marker