# Initialize the trigger score
execute if data entity @s data.TriggerValue store result score @s pk.enhanced_adventure.trigger.value run data get entity @s data.TriggerValue

# Mark as initialized
tag @s add pk_initialized