# Common markers
execute unless score %pk_enhanced_adventure_dev_mode pk.common.value matches 1 if entity @s[tag=!pk_initialized] run function pk_enhanced_adventure_strc:structures/higuru_temple/mechanics/common_markers/initialize

# Urns
execute if entity @s[tag=pk_urn] positioned ~ ~ ~ unless predicate pk_enhanced_adventure_strc:higuru_temple/location/urn run function pk_enhanced_adventure_strc:structures/higuru_temple/mechanics/urn/break

# Statues lever
execute if entity @s[tag=pk_lever] if block ~ ~ ~ lever[powered=true] run function pk_enhanced_adventure_strc:structures/higuru_temple/mechanics/statue_lever/lever_trigger

# Fall traps
execute unless score %pk_enhanced_adventure_dev_mode pk.common.value matches 1 if entity @s[tag=pk_fall_trap_tripwire] run function pk_enhanced_adventure_strc:structures/higuru_temple/mechanics/fall_trap/check_tripwire

# Statues target
execute if entity @s[tag=pk_target_trigger] unless block ~ ~ ~ target[power=0] run function pk_enhanced_adventure_strc:structures/higuru_temple/mechanics/statue_target/target_trigger

# Levers pattern
execute if entity @s[tag=pk_levers_pattern_trigger] run function pk_enhanced_adventure_strc:structures/higuru_temple/mechanics/levers_pattern/tick