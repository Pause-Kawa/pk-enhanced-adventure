# Initialize the trigger and distance_to_trigger score
execute store result score @s pk.enhanced_adventure.trigger.value run data get storage pk_enhanced_adventure:data FightTrigger.TriggerValue
execute store result score @s pk.enhanced_adventure.trigger.distance run data get storage pk_enhanced_adventure:data FightTrigger.TriggerDistance

# Mark as resetable
execute if data storage pk_enhanced_adventure:data FightTrigger{Resetable:1b} run tag @s add pk_resetable

# Mark as initialized
tag @s add pk_initialized