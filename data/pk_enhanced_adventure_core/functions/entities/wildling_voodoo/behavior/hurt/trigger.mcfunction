# Teleport to corner randomly (phase 1, 2 and 4)
execute unless entity @s[tag=pk_in_interphase] unless entity @s[scores={pk.enhanced_adventure.boss.phase=3}] if entity @e[type=marker,tag=pk_wildlings_temple_marker,tag=pk_boss_room_corner,limit=1,distance=..50] run function pk_enhanced_adventure_core:entities/wildling_voodoo/behavior/hurt/try_to_teleport_to_corner

# Update bossbar
execute if entity @s[tag=pk_bossbar_1] store result bossbar wildling_voodoo_1 value run scoreboard players get @s pk.enhanced_adventure.boss.health
execute if entity @s[tag=pk_bossbar_2] store result bossbar wildling_voodoo_2 value run scoreboard players get @s pk.enhanced_adventure.boss.health
execute if entity @s[tag=pk_bossbar_3] store result bossbar wildling_voodoo_3 value run scoreboard players get @s pk.enhanced_adventure.boss.health

# Play sound
function pk_enhanced_adventure_core:entities/wildling_voodoo/sounds/hurt