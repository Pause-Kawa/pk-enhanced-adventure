summon marker ^ ^ ^1 {Tags:["pk_direction"]}

data modify storage pk_enhanced_adventure:data Temp.Marker.Pos set from entity @e[type=marker,tag=pk_direction,limit=1,distance=..10] Pos
execute store result score %pk_target_x pk.common.value run data get storage pk_enhanced_adventure:data Temp.Marker.Pos[0] 1000
execute store result score %pk_target_y pk.common.value run data get storage pk_enhanced_adventure:data Temp.Marker.Pos[1] 1000
execute store result score %pk_target_z pk.common.value run data get storage pk_enhanced_adventure:data Temp.Marker.Pos[2] 1000

scoreboard players operation %pk_target_x pk.common.value -= %pk_entity_x pk.common.value
scoreboard players operation %pk_target_y pk.common.value -= %pk_entity_y pk.common.value
scoreboard players operation %pk_target_z pk.common.value -= %pk_entity_z pk.common.value

summon fireball ^ ^ ^0.5 {ExplosionPower:0b,Tags:["pk_higuru_guardian_projectile","pk_large","pk_current_projectile"],Item:{id:"minecraft:magma_cream",Count:1b,tag:{Enchantments:[{id:"minecraft:sharpness",lvl:1s}]}},Passengers:[{id:"minecraft:marker",Tags:["pk_higuru_guardian_projectile_marker","pk_large"]}]}

data modify storage pk_enhanced_adventure:data Temp.Projectile.Motion set value [0d,0d,0d]
execute store result storage pk_enhanced_adventure:data Temp.Projectile.Motion[0] double 0.001 run scoreboard players get %pk_target_x pk.common.value
execute store result storage pk_enhanced_adventure:data Temp.Projectile.Motion[1] double 0.001 run scoreboard players get %pk_target_y pk.common.value
execute store result storage pk_enhanced_adventure:data Temp.Projectile.Motion[2] double 0.001 run scoreboard players get %pk_target_z pk.common.value
data modify entity @e[type=fireball,tag=pk_current_projectile,limit=1,distance=..10] Motion set from storage pk_enhanced_adventure:data Temp.Projectile.Motion
tag @e[type=fireball,tag=pk_current_projectile,limit=1,distance=..10] remove pk_current_projectile

kill @e[type=marker,tag=pk_direction,limit=1,distance=..10]

playsound entity.wither.shoot hostile @a ~ ~ ~ 1 0.8