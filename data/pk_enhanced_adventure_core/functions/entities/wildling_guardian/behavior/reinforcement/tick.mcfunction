# Call reinforcements
execute if entity @s[tag=!pk_preparing_reinforcement,scores={pk.enhanced_adventure.boss.reinforcement.next_delay=0}] run function pk_enhanced_adventure_core:entities/wildling_guardian/behavior/reinforcement/check_before_prepare
execute if entity @s[tag=pk_preparing_reinforcement] run function pk_enhanced_adventure_core:entities/wildling_guardian/behavior/reinforcement/tick_prepare 

# Decrease delay before next wave
scoreboard players remove @s[scores={pk.enhanced_adventure.boss.reinforcement.next_delay=1..}] pk.enhanced_adventure.boss.reinforcement.next_delay 1