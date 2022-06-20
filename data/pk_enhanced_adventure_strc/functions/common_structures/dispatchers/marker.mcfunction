# Fight Triggers
execute unless score %pk_enhanced_adventure_dev_mode pk.common.value matches 1 if entity @s[tag=pk_fight_trigger] run function pk_enhanced_adventure_strc:common_structures/mechanics/fight_trigger/tick

# Fight Engines
execute unless score %pk_enhanced_adventure_dev_mode pk.common.value matches 1 if entity @s[tag=pk_fight_engine] run function pk_enhanced_adventure_strc:common_structures/mechanics/fight_engine/tick

# Spawner Engines
execute unless score %pk_enhanced_adventure_dev_mode pk.common.value matches 1 if entity @s[tag=pk_spawner_engine] run function pk_enhanced_adventure_strc:common_structures/mechanics/spawner_engine/tick