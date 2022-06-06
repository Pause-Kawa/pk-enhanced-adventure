# Store the necessary data temporary
data modify storage pk_enhanced_adventure:data FightTrigger set value {}
data modify storage pk_enhanced_adventure:data FightTrigger set from entity @s data 

# Initialize
execute if entity @s[tag=!pk_initialized] run function pk_enhanced_adventure_strc:common_structures/mechanics/fight_trigger/initialize
# Check for player distance
execute if entity @s[tag=!pk_started] run function pk_enhanced_adventure_strc:common_structures/mechanics/fight_trigger/check_player_distance