advancement revoke @s only pk_enhanced_adventure_core:interactions/kill_entity_with_impetuousity_item
tag @s add pk_has_impetuousity_boost
# Init player score if no value yet
scoreboard players add @s pk.enhanced_adventure.impetuousity.timer 0
scoreboard players add @s pk.enhanced_adventure.impetuousity.level 0
# Update : increase level up to 3, and add 10 seconds bonus time, with a maximum of 30 seconds
scoreboard players add @s[scores={pk.enhanced_adventure.impetuousity.level=..2}] pk.enhanced_adventure.impetuousity.level 1
scoreboard players add @s[scores={pk.enhanced_adventure.impetuousity.timer=..400}] pk.enhanced_adventure.impetuousity.timer 200
scoreboard players set @s[scores={pk.enhanced_adventure.impetuousity.timer=401..}] pk.enhanced_adventure.impetuousity.timer 600
scoreboard players set @s pk.enhanced_adventure.impetuousity.particle_timer 20
