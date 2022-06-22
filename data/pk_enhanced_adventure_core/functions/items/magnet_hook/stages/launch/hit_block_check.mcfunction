# Check around the hit block
data remove storage pk_enhanced_adventure:data Temp.MagnetHook.LatchPoint
# - If solid block above but not below
execute unless block ~ ~1 ~ #pk_enhanced_adventure_core:magnet_hook_traversable if block ~ ~-1 ~ #pk_enhanced_adventure_core:magnet_hook_traversable run data modify storage pk_enhanced_adventure:data Temp.MagnetHook.LatchPoint set value "ceiling"
# - If solid block below but not above
execute unless block ~ ~-1 ~ #pk_enhanced_adventure_core:magnet_hook_traversable if block ~ ~1 ~ #pk_enhanced_adventure_core:magnet_hook_traversable run data modify storage pk_enhanced_adventure:data Temp.MagnetHook.LatchPoint set value "ground"
# - If no solid block above or below : side hit
execute if block ~ ~1 ~ #pk_enhanced_adventure_core:magnet_hook_traversable if block ~ ~-1 ~ #pk_enhanced_adventure_core:magnet_hook_traversable run data modify storage pk_enhanced_adventure:data Temp.MagnetHook.LatchPoint set value "side"

# If solid block below and above (too narrow) : fail
execute unless data storage pk_enhanced_adventure:data Temp.MagnetHook.LatchPoint run function pk_enhanced_adventure_core:items/magnet_hook/stages/launch/fail
# Else, set the latch point
execute if data storage pk_enhanced_adventure:data Temp.MagnetHook.LatchPoint run function pk_enhanced_adventure_core:items/magnet_hook/stages/launch/latch_point_set