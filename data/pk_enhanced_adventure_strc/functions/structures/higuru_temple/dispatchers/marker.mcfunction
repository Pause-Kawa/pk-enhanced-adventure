# Common markers
execute unless score %pk_enhanced_adventure_dev_mode pk.common.value matches 1 if entity @s[tag=!pk_initialized] run function pk_enhanced_adventure_strc:structures/higuru_temple/mechanics/common_markers/initialize

# Urns
execute if entity @s[tag=pk_urn] positioned ~ ~ ~ unless predicate pk_enhanced_adventure_strc:higuru_temple/location/urn run function pk_enhanced_adventure_strc:structures/higuru_temple/mechanics/urn/break

# Statues lever
execute if entity @s[tag=pk_lever] if block ~ ~ ~ lever[powered=true] run function pk_enhanced_adventure_strc:structures/higuru_temple/mechanics/statue_lever/lever_trigger