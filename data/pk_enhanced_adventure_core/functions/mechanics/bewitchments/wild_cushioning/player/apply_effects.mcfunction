# Mark as having wild cushioning effects
tag @s add has_wild_cushioning_effects

# Prevent fall damages up to 5 blocks falling high
execute store result score @s pk.enhanced_adventure.motion.y run data get entity @s Motion[1] 10000
execute if entity @s[scores={pk.enhanced_adventure.motion.y=-8600..-6800}] unless block ~ ~-.8 ~ #pk_enhanced_adventure_core:wild_cushioning_exclude run effect give @s slow_falling 1 0 true

# Add 20% extra spreed when sprinting
attribute @s[predicate=pk_enhanced_adventure_core:flags/is_sprinting] generic.movement_speed modifier add 1-1-16-11-2 "Wild Cushioning Bonus" 0.01745 add