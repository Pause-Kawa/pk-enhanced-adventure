# Increment timer
scoreboard players add @s pk.enhanced_adventure.timer 1

# Check if the memorial excerpt has a thrower
execute if entity @s[scores={pk.enhanced_adventure.timer=1}] if data entity @s Thrower run tag @s add pk_has_thrower

# Stop ticking through this entity if it has no thrower
tag @s[tag=!pk_has_thrower] remove pk_enhanced_adventure_item_entity_to_track

# Stages
# - Before start : run an animation
execute if entity @s[tag=pk_has_thrower,scores={pk.enhanced_adventure.timer=1}] run function pk_enhanced_adventure_core:items/memorial_excerpt/stages/before_start
# - Start : run an animation
execute if entity @s[scores={pk.enhanced_adventure.timer=65}] run function pk_enhanced_adventure_core:items/memorial_excerpt/stages/start
# - Before memorize : check if the thrower is still connected and close enough from the Memorial Excerpt
execute if entity @s[scores={pk.enhanced_adventure.timer=100}] run function pk_enhanced_adventure_core:items/memorial_excerpt/stages/before_memorize