# Define bossbar
scoreboard players add %pk_enhanced_adventure_wildling_guardian_bossbar pk.common.value 1
execute if score %pk_enhanced_adventure_wildling_guardian_bossbar pk.common.value matches 1 run function pk_enhanced_adventure_core:entities/wildling_guardian/bossbar/1/initialise
execute if score %pk_enhanced_adventure_wildling_guardian_bossbar pk.common.value matches 2 run function pk_enhanced_adventure_core:entities/wildling_guardian/bossbar/2/initialise
execute if score %pk_enhanced_adventure_wildling_guardian_bossbar pk.common.value matches 3 run function pk_enhanced_adventure_core:entities/wildling_guardian/bossbar/3/initialise

scoreboard players set @s pk.enhanced_adventure.boss.phase 1
scoreboard players set @s pk.enhanced_adventure.weapon_switch.delay 0
scoreboard players set @s pk.enhanced_adventure.boss.reinforcement.next_delay 400
tag @s remove pk_wildling_guardian_current