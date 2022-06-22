# Link latch point marker and the player
scoreboard players operation @s pk.enhanced_adventure.magnet_hook.id = %pk_magnet_hook_id pk.common.value

# Add the tag corresponding on the part of the block the latch point is
data modify entity @s Tags append from storage pk_enhanced_adventure:data Temp.MagnetHook.LatchPoint

# Reposition depending on the tag 
execute if entity @s[tag=ceiling] run tp ~ ~-1 ~

# Remove current tag
tag @s remove pk_current_entity