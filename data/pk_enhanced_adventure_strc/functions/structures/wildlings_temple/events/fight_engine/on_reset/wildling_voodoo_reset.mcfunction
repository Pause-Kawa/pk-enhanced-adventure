# Remove Wildling Voodoo relative entity
tp @e[type=#pk_enhanced_adventure_core:wildling_voodoo_fight_relative,tag=wildling_voodoo_fight_relative,distance=..50] ~ -1000 ~
execute positioned ~ -1000 ~ run kill @e[type=#pk_enhanced_adventure_core:wildling_voodoo_fight_relative,tag=wildling_voodoo_fight_relative,distance=..0.1]

# Remove bossbar
bossbar set wildling_voodoo_1 players
bossbar set wildling_voodoo_2 players
bossbar set wildling_voodoo_3 players
scoreboard players remove %pk_enhanced_adventure_wildling_voodoo_bossbar pk.common.value 1