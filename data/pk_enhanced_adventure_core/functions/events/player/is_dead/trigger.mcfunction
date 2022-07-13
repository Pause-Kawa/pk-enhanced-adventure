# Reset score
scoreboard players set @s pk.enhanced_adventure.death_count 0

# Allegiance bewtichment
execute unless score %pk_enhanced_adventure_settings_enable_allegiance_bewitchment pk.common.value matches 0 run function pk_enhanced_adventure_core:mechanics/bewitchments/allegiance/on_death