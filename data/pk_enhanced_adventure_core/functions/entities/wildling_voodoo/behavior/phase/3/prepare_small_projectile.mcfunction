# Store boss pos values
# - Temp.Entity is already defined with the Wildling Voodoo data
execute store result score %pk_entity_x pk.common.value run data get storage pk_enhanced_adventure:data Temp.Entity.Pos[0] 1000
execute store result score %pk_entity_y pk.common.value run data get storage pk_enhanced_adventure:data Temp.Entity.Pos[1] 1000
execute store result score %pk_entity_z pk.common.value run data get storage pk_enhanced_adventure:data Temp.Entity.Pos[2] 1000

# Shootface toward all players
execute positioned ~-40 ~-5 ~-40 run tag @a[dx=80,dy=14,dz=80] add pk_target_player
execute as @a[tag=pk_target_player] facing entity @s eyes run function pk_enhanced_adventure_core:entities/wildling_voodoo/behavior/phase/3/shot_small_projectile
tag @a[tag=pk_target_player] remove pk_target_player