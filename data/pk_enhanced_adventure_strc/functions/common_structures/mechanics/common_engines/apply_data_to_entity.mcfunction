# Tag the relative entity
tag @s add pk_enhanced_adventure_mob
tag @s add pk_enhanced_adventure_data_applied

# Link the entity to relative marker
execute if data storage pk_enhanced_adventure:data Temp.Engine{Type:"Spawner"} run tag @s add pk_spawner_engine_relative_entity
execute if data storage pk_enhanced_adventure:data Temp.Engine{Type:"Fight"} run tag @s add pk_fight_engine_relative_entity
execute store result score @s pk.enhanced_adventure.trigger.value run data get storage pk_enhanced_adventure:data Temp.Engine.TriggerValue

# Assign data to entity
data modify entity @s ActiveEffects set from storage pk_enhanced_adventure:data Temp.Entity.ActiveEffects
data modify entity @s ArmorDropChances set from storage pk_enhanced_adventure:data Temp.Entity.ArmorDropChances
data modify entity @s ArmorItems set from storage pk_enhanced_adventure:data Temp.Entity.ArmorItems
data modify entity @s HandDropChances set from storage pk_enhanced_adventure:data Temp.Entity.HandDropChances
data modify entity @s HandItems set from storage pk_enhanced_adventure:data Temp.Entity.HandItems
data modify entity @s PersistenceRequired set from storage pk_enhanced_adventure:data Temp.Entity.PersistenceRequired
data modify entity @s variant set from storage pk_enhanced_adventure:data Temp.Entity.variant