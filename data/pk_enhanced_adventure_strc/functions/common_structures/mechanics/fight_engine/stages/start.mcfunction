# _DEBUG LOGS
execute if score %pk_enhanced_adventure_debug_log pk.common.value matches 1 run tellraw @a[tag=pk_dev] {"text":"FIGHT ENGINE - STAGE: Start","color":"yellow"}

# Increment the current stage
tag @s remove pk_stage_starting
tag @s add pk_stage_ongoing

# Prepare Entities
data modify storage pk_enhanced_adventure:data Temp.Entities set value []
data modify storage pk_enhanced_adventure:data Temp.Entities set from storage pk_enhanced_adventure:data Temp.Engine.Entities

# Prepare Renforcing Entities
# - Storing amount of players being at or less than 50 blocks from the engine to summon reinforcing
scoreboard players set %pk_reinforcing_total pk.common.value 0
execute store result score %pk_reinforcing_total pk.common.value positioned ~-50 -64 ~-50 if entity @a[dx=100,dy=512,dz=100,gamemode=!spectator]
# - Set reinforcing max amount if needed
scoreboard players set %pk_reinforcing_max pk.common.value 2147483647
execute store result score %pk_reinforcing_max pk.common.value run data get storage pk_enhanced_adventure:data Temp.Engine.ReinforcingMax
scoreboard players operation %pk_reinforcing_total pk.common.value < %pk_reinforcing_max pk.common.value
# - Add reinforcing entities to storage
execute if score %pk_reinforcing_total pk.common.value matches 1.. run function pk_enhanced_adventure_strc:common_structures/mechanics/fight_engine/helpers/set_renforcing_recursively

# Summon entities
function pk_enhanced_adventure_strc:common_structures/mechanics/common_engines/summon_entities

# Check if it exists a hook event to run on starting
execute if data storage pk_enhanced_adventure:data Temp.Engine.OnStart run function pk_enhanced_adventure_strc:common_structures/mechanics/fight_engine/hooks/on_start