# Teleport the player to the world spawnpoint
tp @a[tag=pk_waiting_to_be_teleported_at_world_spawnpoint] ~0.5 ~ ~0.5

# Run teleportation events on the player
tag @a[tag=pk_waiting_to_be_teleported_at_world_spawnpoint] add pk_waiting_for_teleport_potion_events
schedule function pk_enhanced_adventure_core:items/teleportation_potion/helpers/after_teleportation_schedule 1t

# Remove tag
tag @a remove pk_waiting_to_be_teleported_at_world_spawnpoint