# Set prepare tag and delay
scoreboard players set @s pk.enhanced_adventure.boss.reinforcement.prepare_delay 40
tag @s add pk_preparing_reinforcement

# If amount of player is >1 during phase 3
# - If 2 players -> reset timer to 600 + 2 reinforcement
execute if score %pk_temp pk.enhanced_adventure.counter matches 2 if score %pk_temp pk.enhanced_adventure.boss.phase matches 3 run function pk_enhanced_adventure_core:entities/wildling_voodoo/behavior/reinforcement/prepare/phase_3_2_players
# - If 3 players -> reset timer to 500 + 3 reinforcement
execute if score %pk_temp pk.enhanced_adventure.counter matches 3 if score %pk_temp pk.enhanced_adventure.boss.phase matches 3 run function pk_enhanced_adventure_core:entities/wildling_voodoo/behavior/reinforcement/prepare/phase_3_3_players
# - If 4+ players -> reset timer to 400 + 4 reinforcement
execute if score %pk_temp pk.enhanced_adventure.counter matches 4.. if score %pk_temp pk.enhanced_adventure.boss.phase matches 3 run function pk_enhanced_adventure_core:entities/wildling_voodoo/behavior/reinforcement/prepare/phase_3_4_or_more_players

# If amount of player is >1 in any case but phase 3
# - If 1 player -> reset timer to 600 + 2 reinforcement
execute if score %pk_temp pk.enhanced_adventure.counter matches 1 unless score %pk_temp pk.enhanced_adventure.boss.phase matches 3 run function pk_enhanced_adventure_core:entities/wildling_voodoo/behavior/reinforcement/prepare/not_phase_3_1_player
# - If 2 players -> reset timer to 500 + 3 reinforcement
execute if score %pk_temp pk.enhanced_adventure.counter matches 2 unless score %pk_temp pk.enhanced_adventure.boss.phase matches 3 run function pk_enhanced_adventure_core:entities/wildling_voodoo/behavior/reinforcement/prepare/not_phase_3_2_players
# - If 3 players -> reset timer to 400 + 4 reinforcement
execute if score %pk_temp pk.enhanced_adventure.counter matches 3 unless score %pk_temp pk.enhanced_adventure.boss.phase matches 3 run function pk_enhanced_adventure_core:entities/wildling_voodoo/behavior/reinforcement/prepare/not_phase_3_3_players
# - If 4+ players -> reset timer to 300 + 4 reinforcement
execute if score %pk_temp pk.enhanced_adventure.counter matches 4.. unless score %pk_temp pk.enhanced_adventure.boss.phase matches 3 run function pk_enhanced_adventure_core:entities/wildling_voodoo/behavior/reinforcement/prepare/not_phase_3_4_or_more_players

# Animation
playsound entity.evoker.prepare_summon ambient @a[distance=..50] ~ ~ ~ 1 0.8
