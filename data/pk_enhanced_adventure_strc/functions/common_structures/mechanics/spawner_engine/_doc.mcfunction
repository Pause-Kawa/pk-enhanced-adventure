# pk_spawner_engine

# This marker is the engine that manage a spawner. When a player approches a reasonnable radius (<50 blocks) it will be triggered.

# ----------------------------------
# Properties:
# ----------------------------------

# TriggerDistance : Minimal distance for the nearest player to be to trigger the spawner engine (possible values work in scales)

# Entities (array of objects): List of mobs to summon on start event.
# - Type (string): Type of entity to summon. 
# - ActiveEffects : Effects to add on this entity.
# - HandItems : Items the entity will hold.

# MaxAliveEntities (integer): Prevent the spawner to trigger another wave if there's already too many entities from this same spawner.

# SpawnAnimations (array of objects): List of animations to run when entities spawn
# - Particles (string): Type of particles to run on each entity
# - Sound (string): Type of sound to run from the marker

# Resetable (boolean): If true, if there's no alive player near the fight engine anymore, the fight engine and its relative fight triggers will be reset. The relative mobs will be removed from the terrain.

# Waves (integer) : Max waves to summon. Infinite if -1

# WavesDelay (integer) : Time between each waves (in ticks).

# WavesReset (boolean): If true, reset the waves score if the spawner engine is reset.

# ----------------------------------
# Hooks:
# ----------------------------------

# OnWave (object / optional): Events to run when an new wave is triggered
# - Events (array of objects): Event to run
# -- Name : name of event

# OnReset (object / optional): Extra events to run when reset
# - Events (array of objects): Event to run
# -- Name : name of event

summon marker ~ ~ ~20 {Tags:["pk_enhanced_adventure_strc_marker","pk_common_marker","pk_spawner_engine"],data:{TriggerValue:0,TriggerDistance:20,Waves:4,WavesDelay:200,WavesReset:0b,MaxAliveEntities:6,Entities:[{Type:"wildling_skeleton_random"},{Type:"wildling_skeleton_random"},{Type:"wildling_skeleton_random"},{Type:"wildling_skeleton_random"}],SpawnAnimations:[{Particles:"soul_fire_flame"},{Sound:"entity.evoker.cast_spell"}],OnWave:{Events:[{Name:"a"}]},OnReset:{Events:[{Name:"a"}]},Resetable:1b}}