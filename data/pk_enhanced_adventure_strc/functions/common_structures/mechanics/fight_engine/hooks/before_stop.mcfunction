# _DEBUG LOGS
execute if score %pk_enhanced_adventure_debug_log pk.common.value matches 1 run tellraw @a[tag=pk_dev] {"text":"FIGHT ENGINE - HOOK: Before Stop","color":"yellow"}

# Initialize the delay before running the "Stop" stage
execute store result score @s pk.enhanced_adventure.delay run data get storage pk_enhanced_adventure:data Temp.Engine.BeforeStop.Delay
scoreboard players set @s[scores={pk.enhanced_adventure.delay=..-1}] pk.enhanced_adventure.delay 0

# Events dispatcher