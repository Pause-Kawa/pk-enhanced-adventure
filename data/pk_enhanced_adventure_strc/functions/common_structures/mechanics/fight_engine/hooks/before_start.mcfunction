# Initialize the delay before running the "Start" stage
execute store result score @s pk.enhanced_adventure.delay run data get storage pk_enhanced_adventure:data FightEngine.EventsBeforeStart.Delay
scoreboard players set @s[scores={pk.enhanced_adventure.delay=..-1}] pk.enhanced_adventure.delay 0

# Events dispatcher