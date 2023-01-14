# Remove higuru guardian relative entity
tp @e[type=#pk_enhanced_adventure_core:higuru_guardian_fight_relative,tag=higuru_guardian_fight_relative,distance=..50] ~ -1000 ~
execute positioned ~ -1000 ~ run kill @e[type=#pk_enhanced_adventure_core:higuru_guardian_fight_relative,tag=higuru_guardian_fight_relative,distance=..0.1]

# Remove bossbar in area
kill @e[type=area_effect_cloud,tag=pk_higuru_guardian_bossbar,distance=..50]
tp @e[type=wither,tag=pk_higuru_guardian_bossbar,distance=..50] ~ -1000 ~
execute positioned ~ -1000 ~ run kill @e[type=wither,tag=pk_higuru_guardian_bossbar,distance=..0.1]