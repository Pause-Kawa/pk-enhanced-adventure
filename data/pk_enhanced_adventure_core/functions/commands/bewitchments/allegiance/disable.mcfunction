execute if score %pk_enhanced_adventure_settings_enable_allegiance_bewitchment pk.common.value matches 1 run tellraw @s [{"text":"Disabled Allegiance bewitchment mechanics","color":"yellow"}]
execute if score %pk_enhanced_adventure_settings_enable_allegiance_bewitchment pk.common.value matches 0 run tellraw @s [{"text":"Allegiance bewitchment is already disabled","color":"red"}]
scoreboard players set %pk_enhanced_adventure_settings_enable_allegiance_bewitchment pk.common.value 0
