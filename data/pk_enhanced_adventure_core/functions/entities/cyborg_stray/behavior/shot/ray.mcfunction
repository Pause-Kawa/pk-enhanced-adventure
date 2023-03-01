scoreboard players add %pk_temp pk.common.ray.dist 1
# If hit a block
execute unless block ~ ~ ~ #pk_enhanced_adventure_core:traversable run function pk_enhanced_adventure_core:entities/cyborg_stray/behavior/shot/ray_fail
# If target is found
execute positioned ~-0.5 ~-0.5 ~-0.5 if entity @p[tag=pk_current_target,dx=0] run function pk_enhanced_adventure_core:entities/cyborg_stray/behavior/shot/ray_hit_target
# If ray's lenght reaches max value
execute if score %pk_temp pk.common.ray.hit matches 0 if score %pk_temp pk.common.ray.dist matches 150 run function pk_enhanced_adventure_core:entities/cyborg_stray/behavior/shot/ray_fail
# Recursive run
execute if score %pk_temp pk.common.ray.hit matches 0 if score %pk_temp pk.common.ray.dist matches ..149 positioned ^ ^ ^0.1 run function pk_enhanced_adventure_core:entities/cyborg_stray/behavior/shot/ray
