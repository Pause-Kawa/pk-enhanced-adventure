# Teleport to corner randomly (phase 1, 2 and 4)
execute unless entity @s[tag=pk_in_interphase] unless entity @s[scores={pk.enhanced_adventure.boss.phase=3}] if entity @e[type=marker,tag=pk_higuru_temple_marker,tag=pk_boss_room_corner,limit=1,distance=..50] run function pk_enhanced_adventure_core:entities/higuru_guardian/behavior/hurt/try_to_teleport_to_corner

# Update bossbar
execute if entity @s[tag=pk_bossbar_1] store result bossbar higuru_guardian_1 value run scoreboard players get @s pk.enhanced_adventure.boss.health
execute if entity @s[tag=pk_bossbar_2] store result bossbar higuru_guardian_2 value run scoreboard players get @s pk.enhanced_adventure.boss.health
execute if entity @s[tag=pk_bossbar_3] store result bossbar higuru_guardian_3 value run scoreboard players get @s pk.enhanced_adventure.boss.health

# Play sound
function pk_enhanced_adventure_core:entities/higuru_guardian/sounds/hurt