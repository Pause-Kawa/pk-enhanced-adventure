scoreboard players remove @s pk.enhanced_adventure.potion.teleportation.delay 1
particle portal ~ ~1 ~ 0.5 0.5 0.5 0.001 1
execute if entity @s[scores={pk.enhanced_adventure.potion.teleportation.delay=0}] run function pk_enhanced_adventure_core:items/teleportation_potion/helpers/start_teleportation