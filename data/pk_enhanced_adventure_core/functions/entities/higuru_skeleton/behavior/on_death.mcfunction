# Data retrieved from pk_enhanced_adventure_core:events/mobs/on_death
execute if data storage pk_enhanced_adventure:data Temp.Entity.Item.tag{pkDropExpOrbs:1b} run function pk_enhanced_adventure_core:entities/higuru_skeleton/behavior/drop_xp_orbs
# Sound
playsound minecraft:entity.skeleton.death hostile @a ~ ~ ~ 1 0.55