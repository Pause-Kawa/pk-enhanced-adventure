execute if entity @s[scores={pk.enhanced_adventure.boss.event_time=20}] run function pk_enhanced_adventure_core:entities/wildling_guardian/behavior/interphase/2_to_3/event_2
execute if entity @s[scores={pk.enhanced_adventure.boss.event_time=70}] run function pk_enhanced_adventure_core:entities/wildling_guardian/behavior/interphase/2_to_3/event_3
execute if entity @s[scores={pk.enhanced_adventure.boss.event_time=80}] run function pk_enhanced_adventure_core:entities/wildling_guardian/behavior/interphase/2_to_3/event_4

scoreboard players add @s pk.enhanced_adventure.boss.event_time 1