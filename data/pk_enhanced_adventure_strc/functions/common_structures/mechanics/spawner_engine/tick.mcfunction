# Store the necessary data temporary
data modify storage pk_enhanced_adventure:data Temp.Engine set value {}
data modify storage pk_enhanced_adventure:data Temp.Engine set from entity @s data 
data modify storage pk_enhanced_adventure:data Temp.Engine.Type set value "Spawner"

# Initialize
execute if entity @s[tag=!pk_initialized] run function pk_enhanced_adventure_strc:common_structures/mechanics/spawner_engine/initialize

# Stages
# - Waiting start : check for a player to be close enough
execute if entity @s[tag=!pk_stage_ongoing] run function pk_enhanced_adventure_strc:common_structures/mechanics/spawner_engine/stages/waiting_start
# - Ongoing
execute if entity @s[tag=pk_stage_ongoing] run function pk_enhanced_adventure_strc:common_structures/mechanics/spawner_engine/stages/ongoing