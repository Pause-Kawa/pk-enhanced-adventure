# Initialize scores
scoreboard players add %pk_enhanced_adventure_spawner_engine pk.enhanced_adventure.trigger.value 1
scoreboard players operation @s pk.enhanced_adventure.trigger.value = %pk_enhanced_adventure_spawner_engine pk.enhanced_adventure.trigger.value 
execute store result storage pk_enhanced_adventure:data Temp.Engine.TriggerValue int 1 run scoreboard players get %pk_enhanced_adventure_spawner_engine pk.enhanced_adventure.trigger.value
execute store result entity @s data.TriggerValue int 1 run scoreboard players get %pk_enhanced_adventure_spawner_engine pk.enhanced_adventure.trigger.value
execute store result score @s pk.enhanced_adventure.trigger.distance run data get storage pk_enhanced_adventure:data Temp.Engine.TriggerDistance
execute store result score @s pk.enhanced_adventure.spawner.entities run data get storage pk_enhanced_adventure:data Temp.Engine.Entities
execute store result score @s pk.enhanced_adventure.spawner.max_entities run data get storage pk_enhanced_adventure:data Temp.Engine.MaxAliveEntities
execute store result score @s pk.enhanced_adventure.spawner.wave run data get storage pk_enhanced_adventure:data Temp.Engine.Waves

# Mark as resetable
execute if data storage pk_enhanced_adventure:data Temp.Engine{Resetable:1b} run tag @s add pk_resetable

# Mark as initialized
tag @s add pk_initialized