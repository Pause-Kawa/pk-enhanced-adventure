tag @s add pk_bossbar_1
execute store result bossbar higuru_guardian_3 max run data get storage pk_enhanced_adventure:data Temp.Entity.Attributes[{Name:"minecraft:generic.max_health"}].Base
execute store result bossbar higuru_guardian_3 value run data get storage pk_enhanced_adventure:data Temp.Entity.Health
bossbar set higuru_guardian_3 visible true
function pk_enhanced_adventure_core:entities/higuru_guardian/bossbar/3/update_players