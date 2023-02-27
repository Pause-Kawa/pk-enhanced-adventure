tag @s add pk_current_marker 

# Teleport forward
tp @s ^ ^ ^1

# Damage
execute positioned ~-0.75 ~-0.75 ~-0.75 as @e[type=#pk_enhanced_adventure_core:mobs_and_player,type=!#pk_enhanced_adventure_core:undead,tag=!pk_enhanced_adventure_core_using_shield,dx=0.5,dy=0.5,dz=0.5] run function pk_enhanced_adventure_core:items/storm_dissipater/shockwave/hurt_alive
execute positioned ~-0.75 ~-0.75 ~-0.75 as @e[type=#pk_enhanced_adventure_core:undead,dx=0.5,dy=0.5,dz=0.5] run function pk_enhanced_adventure_core:items/storm_dissipater/shockwave/hurt_undead
execute positioned ~-0.75 ~-0.75 ~-0.75 at @a[tag=pk_enhanced_adventure_core_using_shield,dx=0.5,dy=0.5,dz=0.5] run playsound item.shield.block player @a[distance=..50] ~ ~ ~ 1 1

# Clear weather
execute if entity @s[tag=pk_should_dissipate_storm,scores={pk.enhanced_adventure.timer=40}] if predicate pk_enhanced_adventure_core:location/dimension/overworld if predicate pk_enhanced_adventure_core:weather/rain_or_thunder if block ~ ~ ~ minecraft:air if blocks ~ ~ ~ ~ 318 ~ ~ ~1 ~ all run weather clear 0

# Remove
kill @s[scores={pk.enhanced_adventure.timer=40}]
execute unless block ~ ~ ~ #pk_enhanced_adventure_core:traversable run kill @s

# Animation
execute if entity @s[scores={pk.enhanced_adventure.delay=4}] run function pk_enhanced_adventure_core:items/storm_dissipater/shockwave/animation 

# Lifetime delay
scoreboard players add @s pk.enhanced_adventure.timer 1
# Animation delay
scoreboard players add @s pk.enhanced_adventure.delay 1

tag @s remove pk_current_marker