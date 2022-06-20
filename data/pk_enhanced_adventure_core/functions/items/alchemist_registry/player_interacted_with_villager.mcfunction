advancement revoke @s only pk_enhanced_adventure_core:interactions/clicked_villager_holding_alchemist_registry
tag @s add pk_current_player
execute anchored eyes positioned ^ ^ ^ run function pk_enhanced_adventure_core:items/alchemist_registry/raycast/start_ray
tag @s remove pk_current_player