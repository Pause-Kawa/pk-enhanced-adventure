# Initialize the trigger score
execute store result score @s pk.enhanced_adventure.trigger.value run data get storage pk_enhanced_adventure:data Temp.Engine.TriggerValue

# Mark as resetable
execute if data storage pk_enhanced_adventure:data Temp.Engine{Resetable:1b} run tag @s add pk_resetable

# Mark as initialized
tag @s add pk_initialized