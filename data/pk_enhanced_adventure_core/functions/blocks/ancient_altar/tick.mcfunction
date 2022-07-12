# In use
execute if entity @s[tag=pk_in_use] run function pk_enhanced_adventure_core:blocks/ancient_altar/states/in_use/tick

# Check if surrounded by hoppers or if an hopper minecart is bellow
execute if predicate pk_enhanced_adventure_core:gameplay/ancient_altar/watch/hopper_check run function pk_enhanced_adventure_core:blocks/ancient_altar/watch/hopper_on_side_replace
execute if block ~ ~-1 ~ hopper run fill ~ ~-1 ~ ~ ~-1 ~ air destroy
execute positioned ~ ~-1 ~ as @e[type=hopper_minecart,dy=0] at @s run function pk_enhanced_adventure_core:blocks/ancient_altar/watch/minecart_hopper_below

# Remove
execute unless block ~ ~ ~ barrel run function pk_enhanced_adventure_core:blocks/ancient_altar/helpers/remove

# Animations
function pk_enhanced_adventure_core:helpers/random/uniform_0_1000
execute if score $out pk.enhanced_adventure.random matches ..500 run particle enchant ~ ~ ~ 0.5 1 0.5 0.01 1 normal