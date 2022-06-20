# Place marker to the bed spawnpoint coordinates
execute store result entity @s Pos[0] double 1 run data get storage pk_enhanced_adventure:data Temp.Entity.SpawnX
execute store result entity @s Pos[1] double 1 run data get storage pk_enhanced_adventure:data Temp.Entity.SpawnY
execute store result entity @s Pos[2] double 1 run data get storage pk_enhanced_adventure:data Temp.Entity.SpawnZ

# Check if the bed still exist
execute if data storage pk_enhanced_adventure:data Temp.Entity{SpawnDimension:"minecraft:overworld"} at @s in minecraft:overworld positioned as @s run function pk_enhanced_adventure_core:items/teleportation_potion/helpers/player_spawnpoint/check_if_still_bed
execute if data storage pk_enhanced_adventure:data Temp.Entity{SpawnDimension:"minecraft:the_nether"} at @s in minecraft:the_nether positioned as @s run function pk_enhanced_adventure_core:items/teleportation_potion/helpers/player_spawnpoint/check_if_still_anchor