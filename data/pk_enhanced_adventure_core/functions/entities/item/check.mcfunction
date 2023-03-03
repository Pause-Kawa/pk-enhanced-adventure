# Mark as checked once
tag @s add pk_enhanced_adventure_checked

# Store necessary data
data modify storage pk_enhanced_adventure:data Temp.Entity.Item set from entity @s Item

# Item dropped when some custom mobs died
execute if data storage pk_enhanced_adventure:data Temp.Entity.Item.tag{pkDeathEvent:1b} run function pk_enhanced_adventure_core:events/mobs/on_death

# Item entity to track each tick
execute if data storage pk_enhanced_adventure:data Temp.Entity.Item.tag{pkEnhancedAdventureItemEntityToTrack:1b} run tag @s add pk_enhanced_adventure_item_entity_to_track

# Memorial Excerpt
execute if data storage pk_enhanced_adventure:data Temp.Entity.Item.tag{pkMemorialExcerpt:1b} run tag @s add pk_memorial_excerpt