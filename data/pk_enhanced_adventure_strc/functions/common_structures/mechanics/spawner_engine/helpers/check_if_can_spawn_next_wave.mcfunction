# Check if spawner engine relative entities still exist (in a radius of 50 blocks)
scoreboard players set %pk_temp pk.enhanced_adventure.counter 0
execute store result score %pk_temp pk.enhanced_adventure.trigger.value run data get storage pk_enhanced_adventure:data Temp.Engine.TriggerValue
execute as @e[type=#pk_enhanced_adventure_core:mobs,tag=pk_spawner_engine_relative_entity,distance=..50] if score @s pk.enhanced_adventure.trigger.value = %pk_temp pk.enhanced_adventure.trigger.value run scoreboard players add %pk_temp pk.enhanced_adventure.counter 1

# Check if the sum of alive relative entities + amount of entities to summon at next wave exceed the MaxAliveEntities value
scoreboard players set %pk_temp pk.common.value 0
scoreboard players operation %pk_temp pk.common.value += @s pk.enhanced_adventure.spawner.entities
scoreboard players operation %pk_temp pk.common.value += %pk_temp pk.enhanced_adventure.counter
execute if score %pk_temp pk.common.value <= @s pk.enhanced_adventure.spawner.max_entities run function pk_enhanced_adventure_strc:common_structures/mechanics/spawner_engine/helpers/next_wave