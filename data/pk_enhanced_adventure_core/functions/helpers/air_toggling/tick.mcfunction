scoreboard players remove @s pk.common.air_toggling 1
execute store result entity @s Air short 1 run time query gametime 
tag @s[scores={pk.common.air_toggling.delay=0}] remove pk_enhanced_adventure_air_toggling