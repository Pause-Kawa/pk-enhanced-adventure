# ----------------------------------------
# Markers
# ----------------------------------------
# Dispatch markers behavior for pk_strc Markers being in loaded area (performances saving)
execute as @e[type=marker,tag=pk_enhanced_adventure_strc_marker] at @s run function pk_enhanced_adventure_strc:base/dispatchers/marker

# ----------------------------------------
# Players
# ----------------------------------------
execute as @a[tag=pk_get_higuru_temple_curse] at @s run function pk_enhanced_adventure_strc:structures/higuru_temple/mechanics/core/player_tick_curse