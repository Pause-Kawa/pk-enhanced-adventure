# Remove Wildling Guardian relative entity
tp @e[type=#pk_enhanced_adventure_core:wildling_guardian_fight_relative,tag=pk_wildling_guardian_fight_relative,distance=..50] ~ -1000 ~
execute positioned ~ -1000 ~ run kill @e[type=#pk_enhanced_adventure_core:wildling_guardian_fight_relative,tag=pk_wildling_guardian_fight_relative,distance=..0.1]

# Remove bossbar
bossbar set wildling_guardian_1 players
bossbar set wildling_guardian_2 players
bossbar set wildling_guardian_3 players
scoreboard players remove %pk_enhanced_adventure_wildling_guardian_bossbar pk.common.value 1