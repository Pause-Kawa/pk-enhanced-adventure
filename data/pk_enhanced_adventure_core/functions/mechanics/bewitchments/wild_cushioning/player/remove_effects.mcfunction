# Remove applied slow falling effect, attribute, and tag
execute if entity @s[predicate=pk_enhanced_adventure_core:effects/slow_falling_1s_max] run effect clear @s slow_falling
attribute @s generic.movement_speed modifier remove 1-1-16-11-2
tag @s remove has_wild_cushioning_effects