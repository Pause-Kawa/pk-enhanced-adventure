# Iterate and check if it should stop to ray
scoreboard players add %pk_temp pk.common.ray.dist 1
execute unless block ~ ~ ~ #pk_enhanced_adventure_core:magnet_hook_traversable run scoreboard players set %pk_temp pk.common.ray.hit 1

# Randomly set block on fire
execute unless score %pk_enhanced_adventure_ppoas_can_spread_fire pk.common.value matches 0 if block ~ ~ ~ #pk_enhanced_adventure_core:inflammable run function pk_enhanced_adventure_core:items/phenix_pepper_on_a_stick/helpers/randomly_set_block_fire
# Randomly set mobs on fire
execute as @e[type=#pk_enhanced_adventure_core:mobs,type=!#pk_enhanced_adventure_core:exclude_inflammable,dx=0] at @s run function pk_enhanced_adventure_core:items/phenix_pepper_on_a_stick/helpers/randomly_set_entity_fire

# Animations
execute if score %pk_temp pk.common.ray.dist matches 11..30 run particle flame ~ ~-0.2 ~ 0.02 0.02 0.02 0.01 1
execute if score %pk_temp pk.common.ray.dist matches 31..40 run particle flame ~ ~-0.1 ~ 0.02 0.02 0.02 0.03 2
execute if score %pk_temp pk.common.ray.dist matches 41..47 run particle flame ~ ~ ~ 0.03 0.03 0.03 0.03 4
execute if score %pk_temp pk.common.ray.dist matches 48.. run particle flame ~ ~ ~ 0.03 0.03 0.03 0.04 5

# Recursive call
execute if score %pk_temp pk.common.ray.hit matches 0 if score %pk_temp pk.common.ray.dist matches ..59 positioned ^ ^ ^0.1 run function pk_enhanced_adventure_core:items/phenix_pepper_on_a_stick/helpers/ray