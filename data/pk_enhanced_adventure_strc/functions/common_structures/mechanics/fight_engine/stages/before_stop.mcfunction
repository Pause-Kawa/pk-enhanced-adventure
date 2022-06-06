# Increment the current stage
tag @s remove pk_stage_ongoing
tag @s add pk_stage_stopping

# Check if it exists a hook event to run before stopping
execute if data storage pk_enhanced_adventure:data FightEngine.EventsBeforeStop run function pk_enhanced_adventure_strc:common_structures/mechanics/fight_engine/stages/before_stop
execute unless data storage pk_enhanced_adventure:data FightEngine.EventsBeforeStop run function pk_enhanced_adventure_strc:common_structures/mechanics/fight_engine/stages/stop