# Reset the used score
scoreboard players set @s pk.enhanced_adventure.used.bow 0

# Check if the player is hanging with a Magnet Hook
execute if entity @s[tag=pk_using_magnet_hook] run function pk_enhanced_adventure_core:items/magnet_hook/events/player_used_bow

# Check if the player shot arrow with a Robustness bow
execute if entity @s[tag=pk_has_robustness_boost] run function pk_enhanced_adventure_core:mechanics/bewitchments/robustness/player/shot_robustness_arrow