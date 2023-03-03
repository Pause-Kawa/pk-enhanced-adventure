tag @s add pk_bossbar_1
execute store result bossbar wildling_guardian_3 max run data get storage pk_enhanced_adventure:data Temp.Entity.Attributes[{Name:"minecraft:generic.max_health"}].Base
execute store result bossbar wildling_guardian_3 value run data get storage pk_enhanced_adventure:data Temp.Entity.Health
function pk_enhanced_adventure_core:entities/wildling_guardian/bossbar/3/update_players