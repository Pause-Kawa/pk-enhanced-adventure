# Remove bossbar in area
kill @e[type=area_effect_cloud,tag=pk_higuru_guardian_bossbar,distance=..50]
tp @e[type=wither,tag=pk_higuru_guardian_bossbar,distance=..50] ~ -1000 ~
execute positioned ~ -1000 ~ run kill @e[type=wither,tag=pk_higuru_guardian_bossbar,distance=..0.1]

# Remove bedrock bossbar area
execute at @e[type=marker,tag=pk_higuru_guardian_bossbar_spot,distance=..50] run fill ~-2 ~-1 ~-2 ~2 ~3 ~2 stone
kill @e[type=marker,tag=pk_higuru_guardian_bossbar_spot,distance=..50]

# Remove higuru guardian relative entity
tp @e[type=#pk_enhanced_adventure_core:higuru_guardian_fight_relative,tag=higuru_guardian_fight_relative,distance=..50] ~ -1000 ~
execute positioned ~ -1000 ~ run kill @e[type=#pk_enhanced_adventure_core:higuru_guardian_fight_relative,tag=higuru_guardian_fight_relative,distance=..0.1]

# Animations
playsound entity.wither.death hostile @a[distance=..50] ~ ~ ~ 0.5 0.8
playsound minecraft:entity.allay.ambient_without_item ambient @a[distance=..50] ~ ~ ~ 1 0.8