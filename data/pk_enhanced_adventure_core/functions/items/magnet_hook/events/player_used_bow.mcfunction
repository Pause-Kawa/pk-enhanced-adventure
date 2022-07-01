# Fix the way arrows are shot
# Since the player is "falling" (while having levitation 255) the shot arrow's direction and render is glitched
# Shootfacing method explanation : https://www.reddit.com/r/minecraftcommands/wiki/questions/shootfacing

# Summon the temporary entity
summon marker ^ ^ ^1 {Tags:["pk_temp_direction"]}

# Get the coordinates of the player and the entity
data modify storage pk_enhanced_adventure:data Temp.Player.Pos set from entity @s Pos
data modify storage pk_enhanced_adventure:data Temp.Target.Pos set from entity @e[type=marker,tag=pk_temp_direction,limit=1,distance=..5] Pos
execute store result score %pk_temp_player pk.enhanced_adventure.pos.x run data get storage pk_enhanced_adventure:data Temp.Player.Pos[0] 1000
execute store result score %pk_temp_player pk.enhanced_adventure.pos.y run data get storage pk_enhanced_adventure:data Temp.Player.Pos[1] 1000
execute store result score %pk_temp_player pk.enhanced_adventure.pos.z run data get storage pk_enhanced_adventure:data Temp.Player.Pos[2] 1000
execute store result score %pk_temp_target pk.enhanced_adventure.pos.x run data get storage pk_enhanced_adventure:data Temp.Target.Pos[0] 1000
execute store result score %pk_temp_target pk.enhanced_adventure.pos.y run data get storage pk_enhanced_adventure:data Temp.Target.Pos[1] 1000
execute store result score %pk_temp_target pk.enhanced_adventure.pos.z run data get storage pk_enhanced_adventure:data Temp.Target.Pos[2] 1000

# Do the math
scoreboard players operation %pk_temp_target pk.enhanced_adventure.pos.x -= %pk_temp_player pk.enhanced_adventure.pos.x
scoreboard players operation %pk_temp_target pk.enhanced_adventure.pos.y -= %pk_temp_player pk.enhanced_adventure.pos.y
scoreboard players operation %pk_temp_target pk.enhanced_adventure.pos.z -= %pk_temp_player pk.enhanced_adventure.pos.z

# Set Motion to projectile
# "pk_enhanced_adventure_checked" tag is applied further to arrow in the "pk_enhanced_adventure_core:entities/arrow/initialize" function from the base tick function.
data modify storage pk_enhanced_adventure:data Temp.Target.Motion set value [0d,0d,0d]
execute store result storage pk_enhanced_adventure:data Temp.Target.Motion[0] double 0.0026 run scoreboard players get %pk_temp_target pk.enhanced_adventure.pos.x
execute store result storage pk_enhanced_adventure:data Temp.Target.Motion[1] double 0.0026 run scoreboard players get %pk_temp_target pk.enhanced_adventure.pos.y
execute store result storage pk_enhanced_adventure:data Temp.Target.Motion[2] double 0.0026 run scoreboard players get %pk_temp_target pk.enhanced_adventure.pos.z
execute anchored eyes positioned ^ ^ ^ run data modify entity @e[type=#minecraft:arrows,tag=!pk_enhanced_adventure_checked,limit=1,sort=nearest,distance=..1] Motion set from storage pk_enhanced_adventure:data Temp.Target.Motion

# Remove the temp entity
kill @e[type=marker,tag=pk_temp_direction,distance=..5]