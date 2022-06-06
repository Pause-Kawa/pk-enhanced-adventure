# Tick Dispatcher for structures Markers (tag pk_enhanced_adventure_marker)

# Common to all structures
# - Common Dispatcher
execute if entity @s[tag=pk_common_marker] run function pk_enhanced_adventure_strc:common_structures/dispatchers/marker

# Higuru Temple
execute if entity @s[tag=pk_higuru_temple_marker] run function pk_enhanced_adventure_strc:structures/higuru_temple/dispatchers/marker