# Change the player tags
tag @s remove pk_magnet_hook_hung

# Remove the relative latch point
kill @e[type=marker,tag=pk_current_magnet_hook_latch_point,distance=..1]

# Clear hanging effects
effect clear @s[predicate=pk_enhanced_adventure_core:effects/levitation_1s_max] levitation
effect clear @s[predicate=pk_enhanced_adventure_core:effects/haste_1s_max] haste

# Climb the block

# Animations
playsound minecraft:item.armor.equip_chain ambient @a ~ ~ ~ 1 1.15