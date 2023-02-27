tag @p add pk_current_target
scoreboard players set %pk_temp pk.common.ray.dist 0
scoreboard players set %pk_temp pk.common.ray.hit 0
execute anchored eyes positioned ^ ^ ^ facing entity @p eyes run function pk_enhanced_adventure_core:entities/cyborg_stray/behavior/shot/ray
tag @p remove pk_current_target