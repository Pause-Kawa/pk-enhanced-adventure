execute if entity @s[scores={pk.enhanced_adventure.boss.event_time=20}] run function pk_enhanced_adventure_core:entities/wildling_voodoo/behavior/interphase/1_to_2/event_2
execute if entity @s[scores={pk.enhanced_adventure.boss.event_time=60}] run function pk_enhanced_adventure_core:entities/wildling_voodoo/behavior/interphase/1_to_2/event_3
execute if entity @s[scores={pk.enhanced_adventure.boss.event_time=80}] run function pk_enhanced_adventure_core:entities/wildling_voodoo/behavior/interphase/1_to_2/event_4

scoreboard players add @s pk.enhanced_adventure.boss.event_time 1