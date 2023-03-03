# When delay reaches 0, summon and remove tag
execute if entity @s[scores={pk.enhanced_adventure.boss.reinforcement.prepare_delay=0}] as @e[type=marker,tag=pk_fight_engine_boss_room,limit=1,distance=..50] at @s run function pk_enhanced_adventure_core:entities/wildling_guardian/behavior/reinforcement/summon_switch
tag @s[scores={pk.enhanced_adventure.boss.reinforcement.prepare_delay=0}] remove pk_preparing_reinforcement

# Animations
execute at @e[type=marker,tag=pk_fight_engine_boss_room,limit=1,distance=..50] run function pk_enhanced_adventure_core:entities/wildling_guardian/behavior/reinforcement/warn_particles

# Decrease score
scoreboard players remove @s[scores={pk.enhanced_adventure.boss.reinforcement.prepare_delay=1..}] pk.enhanced_adventure.boss.reinforcement.prepare_delay 1