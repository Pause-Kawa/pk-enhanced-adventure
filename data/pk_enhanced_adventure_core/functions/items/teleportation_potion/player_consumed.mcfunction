# Revoke advancement
advancement revoke @s only pk_enhanced_adventure_core:consumables/teleportation_potion

# Add tag and set delay before teleportation
tag @s add pk_consumed_teleportation_potion
scoreboard players set @s pk.enhanced_adventure.potion.teleportation.delay 60

# Effects
effect give @s nausea 7 0 true
effect give @s levitation 3 0 true

# Animation
playsound block.beacon.ambient player @s ~ ~ ~ 0.8 1.8