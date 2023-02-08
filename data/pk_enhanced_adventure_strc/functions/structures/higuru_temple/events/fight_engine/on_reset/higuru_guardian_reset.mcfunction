# Remove higuru guardian relative entity
tp @e[type=#pk_enhanced_adventure_core:higuru_guardian_fight_relative,tag=higuru_guardian_fight_relative,distance=..50] ~ -1000 ~
execute positioned ~ -1000 ~ run kill @e[type=#pk_enhanced_adventure_core:higuru_guardian_fight_relative,tag=higuru_guardian_fight_relative,distance=..0.1]

# Remove bossbar
execute if score %pk_enhanced_adventure_higuru_guardian_bossbar pk.common.value matches 1 run bossbar set higuru_guardian_1 visible false
execute if score %pk_enhanced_adventure_higuru_guardian_bossbar pk.common.value matches 2 run bossbar set higuru_guardian_2 visible false
execute if score %pk_enhanced_adventure_higuru_guardian_bossbar pk.common.value matches 3 run bossbar set higuru_guardian_3 visible false
scoreboard players remove %pk_enhanced_adventure_higuru_guardian_bossbar pk.common.value 1