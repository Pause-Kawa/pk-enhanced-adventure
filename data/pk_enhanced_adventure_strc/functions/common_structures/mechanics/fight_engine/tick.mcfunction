# Store the necessary data temporary
data modify storage pk_enhanced_adventure:data FightEngine set value {}
data modify storage pk_enhanced_adventure:data FightEngine set from entity @s data 

# Initialize
execute if entity @s[tag=!pk_initialized] run function pk_enhanced_adventure_strc:common_structures/mechanics/fight_engine/initialize

# Stages
# - Starting (check delay if it has BeforeStart events)
execute if entity @s[tag=pk_stage_starting] if score @s pk.enhanced_adventure.delay matches 0 run function pk_enhanced_adventure_strc:common_structures/mechanics/fight_engine/stages/start
# - Ongoing
execute if entity @s[tag=pk_stage_ongoing] run function pk_enhanced_adventure_strc:common_structures/mechanics/fight_engine/stages/ongoing 
# - Stopping (check delay if it has BeforeStop events)
execute if entity @s[tag=pk_stage_stopping] if score @s pk.enhanced_adventure.delay matches 0 run function pk_enhanced_adventure_strc:common_structures/mechanics/fight_engine/stages/start

# Delay score
scoreboard players remove @s[scores={pk.enhanced_adventure.delay=1..}] pk.enhanced_adventure.delay 1