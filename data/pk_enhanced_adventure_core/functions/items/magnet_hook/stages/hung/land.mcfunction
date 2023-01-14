# Change the player tags
tag @s remove pk_magnet_hook_hung

# Remove the relative latch point
kill @e[type=marker,tag=pk_current_magnet_hook_latch_point,distance=..5]

# Clear hanging effects
effect clear @s[predicate=pk_enhanced_adventure_core:effects/levitation_1s_max] levitation
effect clear @s[predicate=pk_enhanced_adventure_core:effects/haste_1s_max] haste

# Climb the block
# - The players need to look at the center of the block they want to climb on
# - player's x_rotation have been calculated from the _DEV tick section for a repositioning of ^ ^ ^0.8 from the eyes
# - The part "positioned ~ ~0.3 ~" readjustes the location to check for since the player is sneaking
# - The facing block need to be a solid block and the first and second blocks above it need to be traversable blocks
execute if entity @s[tag=!pk_magnet_hook_no_climb,x_rotation=23..51] anchored eyes positioned ^ ^ ^0.8 positioned ~ ~0.3 ~ if block ~ ~ ~ #pk_enhanced_adventure_core:magnet_hook_traversable align xyz unless block ~ ~-1 ~ #pk_enhanced_adventure_core:magnet_hook_traversable if block ~ ~1 ~ #pk_enhanced_adventure_core:magnet_hook_traversable run function pk_enhanced_adventure_core:items/magnet_hook/stages/hung/climb

# Animations
playsound minecraft:item.armor.equip_chain ambient @a ~ ~ ~ 1 1.15




