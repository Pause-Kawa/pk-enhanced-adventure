# Check if the entity has a custom profession and has been cured from its zombie villager form
execute if entity @s[tag=!pk_enhanced_adventure_mob,tag=!pk_enhanced_adventure_checked] run function pk_enhanced_adventure_core:entities/villager/common/check_if_custom_profession

# Mark as adult if Age is 0 or more
execute if entity @s[tag=!pk_adult] run function pk_enhanced_adventure_core:entities/villager/common/check_if_is_adult

# Dispatchers
execute if entity @s[tag=pk_alchemist] run function pk_enhanced_adventure_core:entities/villager/alchemist/tick
execute if entity @s[tag=pk_tinkerer] run function pk_enhanced_adventure_core:entities/villager/tinkerer/tick