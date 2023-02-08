# Reset when the timer ends
tag @s[scores={pk.enhanced_adventure.impetuousity.timer=0}] remove pk_has_impetuousity_boost
scoreboard players set @s[scores={pk.enhanced_adventure.impetuousity.timer=0}] pk.enhanced_adventure.impetuousity.level 0
scoreboard players set @s[scores={pk.enhanced_adventure.impetuousity.particle_timer=0}] pk.enhanced_adventure.impetuousity.particle_timer 20

# Apply modifiers
attribute @s generic.attack_damage modifier remove 1-1-16-11-1
attribute @s[scores={pk.enhanced_adventure.impetuousity.level=1}] generic.attack_damage modifier add 1-1-16-11-1 "Impetuousity Bonus" 1 add
attribute @s[scores={pk.enhanced_adventure.impetuousity.level=2}] generic.attack_damage modifier add 1-1-16-11-1 "Impetuousity Bonus" 2 add
attribute @s[scores={pk.enhanced_adventure.impetuousity.level=3}] generic.attack_damage modifier add 1-1-16-11-1 "Impetuousity Bonus" 3 add

# Animations
execute if entity @s[scores={pk.enhanced_adventure.impetuousity.particle_timer=20,pk.enhanced_adventure.impetuousity.level=1..2}] run particle ambient_entity_effect ~ ~ ~ 0.890 0.149 0.001 1 0 normal
execute if entity @s[predicate=pk_enhanced_adventure_core:scores/bewitchments/impetuousity/large_particles] run particle ambient_entity_effect ~ ~ ~ 0.890 0.149 0.001 1 0 normal

# Decrement timer scores
scoreboard players remove @s[scores={pk.enhanced_adventure.impetuousity.timer=1..}] pk.enhanced_adventure.impetuousity.timer 1
scoreboard players remove @s pk.enhanced_adventure.impetuousity.particle_timer 1