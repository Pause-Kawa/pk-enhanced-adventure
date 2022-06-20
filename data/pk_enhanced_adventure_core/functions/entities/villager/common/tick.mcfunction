# Mark as adult if Age is 0 or more
execute if entity @s[tag=!pk_adult] run function pk_enhanced_adventure_core:entities/villager/common/check_if_is_adult

# Dispatchers
execute if entity @s[tag=pk_alchemist] run function pk_enhanced_adventure_core:entities/villager/alchemist/tick
execute if entity @s[tag=pk_steam_worker] run function pk_enhanced_adventure_core:entities/villager/steam_worker/tick