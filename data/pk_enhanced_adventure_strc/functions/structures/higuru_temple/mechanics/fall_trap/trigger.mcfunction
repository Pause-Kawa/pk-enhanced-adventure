scoreboard players set %temp pk.common.value 0
execute if block ~ ~ ~-4 tripwire run function pk_enhanced_adventure_strc:structures/higuru_temple/mechanics/fall_trap/open_north_south
execute unless score %temp pk.common.value matches 1 if block ~ ~ ~4 tripwire run function pk_enhanced_adventure_strc:structures/higuru_temple/mechanics/fall_trap/open_north_south
execute unless score %temp pk.common.value matches 1 if block ~-4 ~ ~ tripwire run function pk_enhanced_adventure_strc:structures/higuru_temple/mechanics/fall_trap/open_east_west
execute unless score %temp pk.common.value matches 1 if block ~4 ~ ~ tripwire run function pk_enhanced_adventure_strc:structures/higuru_temple/mechanics/fall_trap/open_east_west