particle minecraft:smoke ~ ~ ~ 0.5 1 0.5 0.01 50
playsound minecraft:block.beacon.deactivate ambient @a ~ ~ ~
tellraw @s {"text":"You can't use a Potion of Teleportation in this dimension"}
clear @s[gamemode=!creative] glass_bottle 1
execute if entity @s[gamemode=!creative] run function pk_enhanced_adventure_core:items/teleportation_potion/give