# Change the player tags
tag @s remove pk_magnet_hook_pulled
tag @s remove pk_magnet_hook_pulled_start_animations
tag @s add pk_magnet_hook_hung

# Mark the latch point as reached
tag @e[type=marker,tag=pk_current_magnet_hook_latch_point,limit=1,distance=..2] add pk_reached