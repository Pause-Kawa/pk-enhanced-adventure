# Increment timer
scoreboard players add @s pk.enhanced_adventure.timer 1

# Check if the memorial excerpt has a thrower
execute if entity @s[tag=!pk_has_thrower] if data entity @s Thrower run tag @s add pk_has_thrower

# Stop ticking through this entity if it has no thrower
tag @s[tag=!pk_has_thrower] remove pk_enhanced_adventure_item_entity_to_track

# Steps
execute if entity @s[tag=pk_has_thrower,scores={pk.enhanced_adventure.timer=1}] run playsound minecraft:block.beacon.ambient ambient @a ~ ~ ~ 0.4 1.2
execute if entity @s[scores={pk.enhanced_adventure.timer=40..}] run function pk_enhanced_adventure_core:items/memorial_excerpt/animations/tick_spiral_marker
execute if entity @s[scores={pk.enhanced_adventure.timer=50}] positioned ~ ~0.3 ~ run function pk_enhanced_adventure_core:items/memorial_excerpt/animations/full_circle
execute if entity @s[scores={pk.enhanced_adventure.timer=50}] run playsound minecraft:block.beacon.activate ambient @a ~ ~ ~ 1 1.5
execute if entity @s[scores={pk.enhanced_adventure.timer=75}] positioned ~ ~0.3 ~ run function pk_enhanced_adventure_core:items/memorial_excerpt/animations/full_circle
execute if entity @s[scores={pk.enhanced_adventure.timer=75}] run playsound minecraft:block.beacon.activate ambient @a ~ ~ ~ 1 1.6
execute if entity @s[scores={pk.enhanced_adventure.timer=100}] positioned ~ ~0.3 ~ run function pk_enhanced_adventure_core:items/memorial_excerpt/animations/full_circle
execute if entity @s[scores={pk.enhanced_adventure.timer=100}] run playsound minecraft:block.beacon.activate ambient @a ~ ~ ~ 1 1.7
execute if entity @s[scores={pk.enhanced_adventure.timer=120}] run function pk_enhanced_adventure_core:items/memorial_excerpt/helpers/before_memorize