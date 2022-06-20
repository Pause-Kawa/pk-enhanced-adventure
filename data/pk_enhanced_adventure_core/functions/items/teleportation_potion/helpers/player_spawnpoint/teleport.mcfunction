# Set the "teleport successfully" score
scoreboard players set %pk_teleported_successfully pk.common.value 1

# Teleport player
tp @s ~0.5 ~1 ~0.5

# Run teleportation events on the player
tag @s add pk_waiting_for_teleport_potion_events
schedule function pk_enhanced_adventure_core:items/teleportation_potion/helpers/after_teleportation_schedule 1t