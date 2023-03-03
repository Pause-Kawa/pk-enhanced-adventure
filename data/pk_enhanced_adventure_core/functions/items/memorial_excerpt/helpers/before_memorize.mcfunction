# Retrieve the item's thrower, if the thrower is disconnected or too far away, it won't run.
data modify storage pk_enhanced_adventure:data Temp.Entity set from entity @s {}
tag @s add pk_current_memorial_excerpt
execute as @a[distance=..16] run function pk_enhanced_adventure_core:items/memorial_excerpt/helpers/retrieve_thrower
tag @s remove pk_current_memorial_excerpt

# Stop ticking through this entity if the thrower wasn't retrieved
tag @s remove pk_enhanced_adventure_item_entity_to_track