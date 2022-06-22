# Summon entity depending on its Type
function pk_enhanced_adventure_strc:common_structures/mechanics/common_engines/entities_dispatcher

# Apply data to entity 
execute as @e[type=#pk_enhanced_adventure_core:tracked_mobs,limit=1,sort=nearest,tag=!pk_enhanced_adventure_data_applied] run function pk_enhanced_adventure_strc:common_structures/mechanics/common_engines/apply_data_to_entity

# Spawn animations on entity
function pk_enhanced_adventure_strc:common_structures/mechanics/common_engines/spawn_animations_on_entity