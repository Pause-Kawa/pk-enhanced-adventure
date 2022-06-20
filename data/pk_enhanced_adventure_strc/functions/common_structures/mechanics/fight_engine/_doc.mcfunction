# pk_fight_engine

# This marker is the engine that manage a "fight". When a player approches a fight trigger, it will trigger the fight engine.
# This last one will run different events depending on the step of the fight (see "Hooks").
# On "Start", the engine will summon the Entities and Reinforcing Entities
# At this moment, it will start if at least a single mob matching its TriggerValue is still existing. If not, it means the players defeated them all.
# If not, the "Resolve" step is triggered, the fight_engine and its relative fight_trigger diseappear.
# If yes but resetable, and if there's no alive player near the fight engine anymore, it will be reset.

# ----------------------------------
# Properties:
# ----------------------------------

# TriggerValue (integer): The identifiant that link fight_engine with its fight_trigger and entities

# Entities (array of objects): List of mobs to summon on start event.
# - Type (string): Type of entity to summon. 
# - ActiveEffects : Effects to add on this entity. 
# - HandItems : Items the entity will hold.

# Reinforcing (array): See above. Entities to summon per player.
# ReinforcingMax (integer): A maximum cap that can't be exceeded even if the amount of player should spawn more reinforcing entities.

# SpawnAnimations (array of objects): List of animations to run when entities spawn
# - Particles (string): Type of particles to run on each entity
# - Sound (string): Type of sound to run from the marker

# Resetable (boolean): If true, if there's no alive player near the fight engine anymore, the fight engine and its relative fight triggers will be reset. The relative mobs will be removed from the terrain.

# ----------------------------------
# Hooks:
# ----------------------------------

# BeforeStart (object / optional): Events with a delay before summoning the mobs and running the StartEvents (often used for animations)
# - Delay (integer): Delay in ticks before starting.
# - Events (array of objects): Event to run
# -- Name : name of event

# OnStart (object / optional): Events to run on start
# - Events (array of objects): Event to run
# -- Name : name of event

# BeforeStop (object / optional): Events with a delay before running the EventsOnStop (often used for animations)
# - Delay (integer): Delay in ticks before resolving.
# - Events (array of objects): Event to run
# -- Name : name of event

# OnStop (object / optional): Events to run after all entities have been defeated
# - Events (array of objects): Event to run
# -- Name : name of event

# OnReset (object / optional): Extra events to run when reset
# - Events (array of objects): Event to run
# -- Name : name of event

# ----------------------------------
# Example:
# ----------------------------------

summon marker ~ ~ ~10 {Tags:["pk_enhanced_adventure_strc_marker","pk_common_marker","pk_fight_engine"],data:{Entities:[{Type:"higuru_skeleton_axeman"}],Reinforcing:[{Type:"higuru_skeleton_archer"}],ReinforcingMax:3,SpawnAnimations:[{Particles:"soul_fire_flame"},{Sound:"entity.evoker.cast_spell"}],BeforeStart:{Events:[{Name:"higuru_temple_boss_room"}],Delay:80},OnStart:{Events:[{Name:"higuru_temple_boss_room"}]},BeforeStop:{Events:[{Name:"higuru_temple_boss_room"}],Delay:80},OnStop:{Events:[{Name:"higuru_temple_boss_room"}]},OnReset:{Events:[{Name:"higuru_temple_boss_room"}]},Resetable:1b,TriggerValue:11}}

summon marker ~ ~ ~10 {Tags:["pk_enhanced_adventure_strc_marker","pk_common_marker","pk_fight_engine"],data:{Entities:[{Type:"higuru_skeleton_axeman"}],Reinforcing:[{Type:"higuru_skeleton_archer"}],ReinforcingMax:3,SpawnAnimations:[{Particles:"soul_fire_flame"},{Sound:"entity.evoker.cast_spell"}],BeforeStart:{Events:[{Name:"higuru_temple_boss_room"}],Delay:20},OnStart:{Events:[{Name:"higuru_temple_boss_room"}]},BeforeStop:{Events:[{Name:"higuru_temple_boss_room"}],Delay:20},OnStop:{},OnReset:{},Resetable:1b,TriggerValue:1}}

summon marker ~ ~ ~10 {Tags:["pk_enhanced_adventure_strc_marker","pk_common_marker","pk_fight_trigger"],data:{TriggerDistance:2,TriggerValue:0}}