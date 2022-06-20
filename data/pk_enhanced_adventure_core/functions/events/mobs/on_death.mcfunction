# Data retrieved from pk_enhanced_adventure_core:item/initialize

# Higuru Skeleton
execute if data storage pk_enhanced_adventure:data Temp.Entity.Item.tag{pkHiguruSkeleton:1b} run function pk_enhanced_adventure_core:entities/higuru_skeleton/behavior/on_death
execute if data storage pk_enhanced_adventure:data Temp.Entity.Item.tag{pkHiguruSkeletonGuardian:1b} run function pk_enhanced_adventure_core:entities/higuru_skeleton_guardian/behavior/on_death

# Kill the events_death item 
kill @s