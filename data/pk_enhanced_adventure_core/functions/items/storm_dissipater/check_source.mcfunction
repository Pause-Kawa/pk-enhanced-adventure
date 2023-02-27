# Check if shot from a crossbow or a dispenser
execute if data storage pk_enhanced_adventure:data Temp.Entity{ShotAtAngle:1b} run function pk_enhanced_adventure_core:items/storm_dissipater/shot_from_valid_source
execute if data storage pk_enhanced_adventure:data Temp.Entity{ShotAtAngle:0b} run function pk_enhanced_adventure_core:items/storm_dissipater/shot_from_invalid_source