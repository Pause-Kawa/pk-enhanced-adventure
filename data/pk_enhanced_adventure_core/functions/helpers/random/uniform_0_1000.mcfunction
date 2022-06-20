# From Aeldrion's Minecraft-Random data pack
# Github: https://github.com/Aeldrion/Minecraft-Random/
# Fixed input $min 0 and $max 1000

# Calculate size of range
scoreboard players set #size pk.enhanced_adventure.random 1001

# Xn+1 = (aXn + c) mod m
scoreboard players operation #lcg pk.enhanced_adventure.random *= #lcg_a pk.enhanced_adventure.random
scoreboard players operation #lcg pk.enhanced_adventure.random += #lcg_c pk.enhanced_adventure.random
scoreboard players operation #lcg pk.enhanced_adventure.random %= #lcg_m pk.enhanced_adventure.random

# Trim "low quality" bits
scoreboard players operation $out pk.enhanced_adventure.random = #lcg pk.enhanced_adventure.random
scoreboard players operation $out pk.enhanced_adventure.random /= #8 pk.enhanced_adventure.random

# Get within desired range
scoreboard players operation $out pk.enhanced_adventure.random %= #size pk.enhanced_adventure.random