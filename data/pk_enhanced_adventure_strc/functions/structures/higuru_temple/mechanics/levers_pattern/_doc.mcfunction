# ----------------------------------
# Trigger marker
# ----------------------------------

# TriggerValue (integer): The identifiant that link fight_engine with its fight_trigger and entities
# Pattern (integer): The pattern the levers must match

execute align xyz run summon marker ~0.5 ~ ~0.5 {Tags:["pk_enhanced_adventure_strc_marker","pk_higuru_temple_marker","pk_levers_pattern_trigger"],data:{Pattern:1,TriggerValue:0}}

# ----------------------------------
# Event marker
# ----------------------------------
# Marker to place where the event should trigger 

# TriggerValue (integer): The identifiant that link fight_engine with its fight_trigger and entities

# NeededActions (integer) : Amount of targets that need to be powered to run the event

# OnStop (object / optional): Events to run after all entities have been defeated
# - Events (array of objects): Event to run
# -- Name : name of event

execute align xyz run summon marker ~0.5 ~ ~0.5 {Tags:["pk_enhanced_adventure_strc_marker","pk_higuru_temple_marker","pk_levers_pattern_event"],data:{OnStop:{Events:[{Name:"higuru_temple_inner_door_open"}]},TriggerValue:0}}