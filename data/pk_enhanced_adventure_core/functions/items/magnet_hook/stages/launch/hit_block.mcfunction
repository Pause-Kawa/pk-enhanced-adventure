scoreboard players add %pk_temp pk.common.ray.hit 1
# Track back more carefully to reach the block before the hit block (in case of lauching on corners)
execute positioned ^ ^ ^-0.1 run function pk_enhanced_adventure_core:items/magnet_hook/stages/launch/hit_block_reposition