# Reduce the use delay and run warning sound if the Magnet Hook is reusable again
scoreboard players remove @s[scores={pk.enhanced_adventure.magnet_hook.delay=1..}] pk.enhanced_adventure.magnet_hook.delay 1
playsound block.note_block.hat ambient @s[scores={pk.enhanced_adventure.magnet_hook.delay=1}] ~ ~ ~ 1 1.4

# Stages : 
# - Being pulled
execute if entity @s[tag=pk_magnet_hook_pulled] run function pk_enhanced_adventure_core:items/magnet_hook/stages/pull/tick
# - Hanging
execute if entity @s[tag=pk_magnet_hook_hung] run function pk_enhanced_adventure_core:items/magnet_hook/stages/hung/tick

# Stop to track this player
tag @s[tag=!pk_magnet_hook_hung,tag=!pk_magnet_hook_pulled,scores={pk.enhanced_adventure.magnet_hook.delay=0}] remove pk_using_magnet_hook