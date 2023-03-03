# Data retrieved from pk_enhanced_adventure_core:item/initialize

# Wildling Skeleton
execute if data storage pk_enhanced_adventure:data Temp.Entity.Item.tag{pkWildlingSkeleton:1b} run function pk_enhanced_adventure_core:entities/wildling_skeleton/behavior/on_death
execute if data storage pk_enhanced_adventure:data Temp.Entity.Item.tag{pkWildlingGuardian:1b} run function pk_enhanced_adventure_core:entities/wildling_guardian/behavior/on_death

# Kill the events_death item 
kill @s