# Decrease delay before the bewitchment can be triggered again
scoreboard players remove @s[scores={pk.enhanced_adventure.safeguard_instinct.delay=1..}] pk.enhanced_adventure.safeguard_instinct.delay 1

# Trigger effect if the player has less than 6 Health points
execute if entity @s[scores={pk.enhanced_adventure.health=1..6}] unless entity @s[scores={pk.enhanced_adventure.safeguard_instinct.delay=1..}] run function pk_enhanced_adventure_core:mechanics/bewitchments/safeguard_instinct/trigger