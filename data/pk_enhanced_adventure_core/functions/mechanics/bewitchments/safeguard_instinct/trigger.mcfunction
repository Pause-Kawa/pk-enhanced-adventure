# Set delay before the bewitchment can be triggered again
scoreboard players set @s pk.enhanced_adventure.safeguard_instinct.delay 1200

# Player effects
effect give @s resistance 10 0
effect give @s fire_resistance 10 0
effect give @s speed 10 0

# Animations
particle end_rod ~ ~ ~ 1 2 1 0.1 20
playsound minecraft:item.trident.thunder ambient @a ~ ~ ~ 1 1.4