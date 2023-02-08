# Core
execute if entity @s[tag=pk_higuru_temple_core] run function pk_enhanced_adventure_strc:structures/higuru_temple/mechanics/core/tick

# Main entrance
execute unless score %pk_enhanced_adventure_dev_mode pk.common.value matches 1 if entity @s[tag=pk_main_entrance] run function pk_enhanced_adventure_strc:structures/higuru_temple/mechanics/main_entrance/tick

# Common markers
execute unless score %pk_enhanced_adventure_dev_mode pk.common.value matches 1 if entity @s[tag=!pk_initialized] run function pk_enhanced_adventure_strc:structures/higuru_temple/mechanics/common_markers/initialize

# Generator
execute unless score %pk_enhanced_adventure_prevent_generation pk.common.value matches 1 if entity @s[tag=pk_strc_generator] run function pk_enhanced_adventure_strc:structures/higuru_temple/generation/generate

# Urns
execute if entity @s[tag=pk_urn] positioned ~ ~ ~ unless predicate pk_enhanced_adventure_strc:higuru_temple/location/urn run function pk_enhanced_adventure_strc:structures/higuru_temple/mechanics/urn/break

# Statues lever
execute if entity @s[tag=pk_lever] if block ~ ~ ~ lever[powered=true] run function pk_enhanced_adventure_strc:structures/higuru_temple/mechanics/statue_lever/lever_trigger

# Fall traps
execute unless score %pk_enhanced_adventure_dev_mode pk.common.value matches 1 if entity @s[tag=pk_fall_trap_tripwire] run function pk_enhanced_adventure_strc:structures/higuru_temple/mechanics/fall_trap/check_tripwire