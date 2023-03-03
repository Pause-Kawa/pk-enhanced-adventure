tag @s add pk_bossbar_1
execute store result bossbar wildling_guardian_1 max run data get entity @s Attributes[{Name:"minecraft:generic.max_health"}].Base
execute store result bossbar wildling_guardian_1 value run data get entity @s Health
function pk_enhanced_adventure_core:entities/wildling_guardian/bossbar/1/update_players