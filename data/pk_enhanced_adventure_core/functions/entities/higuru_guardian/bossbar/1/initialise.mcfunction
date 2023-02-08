tag @s add pk_bossbar_1
execute store result bossbar higuru_guardian_1 max run data get entity @s Attributes[{Name:"minecraft:generic.max_health"}].Base
execute store result bossbar higuru_guardian_1 value run data get entity @s Health
bossbar set higuru_guardian_1 visible true
function pk_enhanced_adventure_core:entities/higuru_guardian/bossbar/1/update_players