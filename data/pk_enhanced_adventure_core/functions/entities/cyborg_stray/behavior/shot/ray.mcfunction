scoreboard players add %pk_temp pk.common.ray.dist 1
execute unless block ~ ~ ~ #pk_enhanced_adventure_core:traversable run function pk_enhanced_adventure_core:entities/cyborg_stray/behavior/shot/fail
execute positioned ~-0.5 ~-0.5 ~-0.5 if entity @p[tag=pk_current_target,dx=0] run function pk_enhanced_adventure_core:entities/cyborg_stray/behavior/shot/found_entity
execute if score %pk_temp pk.common.ray.hit matches 0 if score %pk_temp pk.common.ray.dist matches 150 run function pk_enhanced_adventure_core:entities/cyborg_stray/behavior/shot/fail
execute if score %pk_temp pk.common.ray.hit matches 0 if score %pk_temp pk.common.ray.dist matches ..149 positioned ^ ^ ^0.1 run function pk_enhanced_adventure_core:entities/cyborg_stray/behavior/shot/ray
