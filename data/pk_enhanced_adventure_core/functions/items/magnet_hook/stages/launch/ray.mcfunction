scoreboard players add %pk_temp pk.common.ray.dist 1
execute if score %pk_temp pk.common.ray.dist matches 10.. run particle electric_spark ~ ~ ~ 0 0 0 0 1
execute unless block ~ ~ ~ #pk_enhanced_adventure_core:traversable run function pk_enhanced_adventure_core:items/magnet_hook/stages/launch/hit_block
execute if score %pk_temp pk.common.ray.hit matches 0 if score %pk_temp pk.common.ray.dist matches 150 run function pk_enhanced_adventure_core:items/magnet_hook/stages/launch/fail
execute if score %pk_temp pk.common.ray.hit matches 0 if score %pk_temp pk.common.ray.dist matches ..149 positioned ^ ^ ^0.1 run function pk_enhanced_adventure_core:items/magnet_hook/stages/launch/ray