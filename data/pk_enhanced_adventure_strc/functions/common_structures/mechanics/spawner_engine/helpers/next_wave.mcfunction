# _DEBUG LOGS
execute if score %pk_enhanced_adventure_debug_log pk.common.value matches 1 run tellraw @a[tag=pk_dev] {"text":"SPAWN ENGINE - HELPER: Next Wave","color":"yellow"}

# Decrement Waves
scoreboard players remove @s[scores={pk.enhanced_adventure.spawner.wave=1..}] pk.enhanced_adventure.spawner.wave 1
execute store result score @s pk.enhanced_adventure.delay run data get storage pk_enhanced_adventure:data Temp.Engine.WavesDelay

# Prepare Entities
data modify storage pk_enhanced_adventure:data Temp.Entities set value []
data modify storage pk_enhanced_adventure:data Temp.Entities set from storage pk_enhanced_adventure:data Temp.Engine.Entities

# Summon entities
function pk_enhanced_adventure_strc:common_structures/mechanics/common_engines/summon_entities

# Check if it exists a hook event to run on starting
execute if data storage pk_enhanced_adventure:data Temp.Engine.OnWave run function pk_enhanced_adventure_strc:common_structures/mechanics/spawner_engine/hooks/on_wave

# Remove the marker if it was the last wave
execute if entity @s[scores={pk.enhanced_adventure.spawner.wave=0}] run function pk_enhanced_adventure_strc:common_structures/mechanics/spawner_engine/stages/stop