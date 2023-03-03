tag @s add pk_bossbar_2
execute store result bossbar wildling_guardian_2 max run data get storage pk_enhanced_adventure:data Temp.Entity.Attributes[{Name:"minecraft:generic.max_health"}].Base
execute store result bossbar wildling_guardian_2 value run data get storage pk_enhanced_adventure:data Temp.Entity.Health
function pk_enhanced_adventure_core:entities/wildling_guardian/bossbar/2/update_players