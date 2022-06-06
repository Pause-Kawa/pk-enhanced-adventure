# From Aeldrion's Minecraft-Random data pack
# Github: https://github.com/Aeldrion/Minecraft-Random/

# Create scoreboard objective
scoreboard objectives add pk.enhanced_adventure.random dummy

# Define constants
scoreboard players set #8 pk.enhanced_adventure.random 8
scoreboard players set #lcg_a pk.enhanced_adventure.random 1630111353
scoreboard players set #lcg_c pk.enhanced_adventure.random 1623164762
scoreboard players set #lcg_m pk.enhanced_adventure.random 2147483647

# Default values for uniform
scoreboard players set $min pk.enhanced_adventure.random 0
scoreboard players set $max pk.enhanced_adventure.random 1000