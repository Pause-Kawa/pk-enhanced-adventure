# Increment the current stage
tag @s remove pk_stage_stopping

# Check if it exists a hook event to run on starting
execute if data storage pk_enhanced_adventure:data FightEngine.EventsOnStop run function pk_enhanced_adventure_strc:common_structures/mechanics/fight_engine/hooks/on_stop