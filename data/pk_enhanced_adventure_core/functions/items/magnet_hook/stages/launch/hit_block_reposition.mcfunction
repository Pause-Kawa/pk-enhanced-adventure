execute store success score %pk_temp pk.common.value if block ~ ~ ~ #pk_enhanced_adventure_core:magnet_hook_traversable 
# If the previous block before hit has been reached : Check if the hit location is a valid point
execute if score %pk_temp pk.common.value matches 1 align xyz positioned ~0.5 ~ ~0.5 run function pk_enhanced_adventure_core:items/magnet_hook/stages/launch/hit_block_check
# If still in the hit block : continue to track back
execute if score %pk_temp pk.common.value matches 0 positioned ^ ^ ^-0.01 run function pk_enhanced_adventure_core:items/magnet_hook/stages/launch/hit_block_reposition