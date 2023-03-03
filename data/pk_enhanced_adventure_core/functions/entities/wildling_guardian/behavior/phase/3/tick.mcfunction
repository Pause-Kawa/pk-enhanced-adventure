# Animations
execute if entity @s[scores={pk.enhanced_adventure.boss.shield_level=3}] run particle soul_fire_flame ~ ~1.15 ~ 0.5 0.5 0.5 0.001 3
execute if entity @s[scores={pk.enhanced_adventure.boss.shield_level=2}] run particle soul_fire_flame ~ ~1.15 ~ 0.5 0.5 0.5 0.001 2
execute if entity @s[scores={pk.enhanced_adventure.boss.shield_level=1}] run particle soul_fire_flame ~ ~1.15 ~ 0.5 0.5 0.5 0.001 1

# Shootface projectiles
execute if entity @s[scores={pk.enhanced_adventure.boss.event_time=60}] run function pk_enhanced_adventure_core:entities/wildling_guardian/behavior/phase/3/prepare_random_projectile
execute if entity @s[scores={pk.enhanced_adventure.boss.event_time=70}] run function pk_enhanced_adventure_core:entities/wildling_guardian/behavior/phase/3/prepare_small_projectile
execute if entity @s[scores={pk.enhanced_adventure.boss.event_time=80}] run function pk_enhanced_adventure_core:entities/wildling_guardian/behavior/phase/3/prepare_small_projectile
scoreboard players set @s[scores={pk.enhanced_adventure.boss.event_time=80..}] pk.enhanced_adventure.boss.event_time -1
scoreboard players add @s pk.enhanced_adventure.boss.event_time 1

# Tick projectiles
execute as @e[type=marker,tag=pk_wildling_guardian_projectile_marker,tag=pk_small,predicate=!pk_enhanced_adventure_core:mount/fireballs] at @s run function pk_enhanced_adventure_core:entities/wildling_guardian/behavior/phase/3/explode_small_projectile
execute as @e[type=marker,tag=pk_wildling_guardian_projectile_marker,tag=pk_large,predicate=!pk_enhanced_adventure_core:mount/fireballs] at @s run function pk_enhanced_adventure_core:entities/wildling_guardian/behavior/phase/3/explode_large_projectile

# Reposition entity if needed
execute positioned ~ ~-2 ~ unless entity @e[type=marker,tag=pk_fight_engine_boss_room,limit=1,distance=..0.1] at @e[type=marker,tag=pk_fight_engine_boss_room,limit=1,distance=..50] run tp @s ~ ~2 ~