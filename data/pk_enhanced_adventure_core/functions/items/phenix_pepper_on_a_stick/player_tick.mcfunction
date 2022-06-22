# Remove the using tag and movement speed modifier if the player stop to use the Phenix Pepper On A Stick
scoreboard players remove @s pk.enhanced_adventure.ppoas.delay 1
tag @s[scores={pk.enhanced_adventure.ppoas.delay=0}] remove pk_using_ppoas
attribute @s[scores={pk.enhanced_adventure.ppoas.delay=0}] generic.movement_speed modifier remove 1-1-16-11-3