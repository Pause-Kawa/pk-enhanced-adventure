# Store boss phase value
scoreboard players operation %pk_temp pk.enhanced_adventure.boss.phase = @s pk.enhanced_adventure.boss.phase
# Search amount of players being in the room
execute at @e[type=marker,tag=pk_fight_engine_boss_room,limit=1,distance=..50] positioned ~-40 ~-2 ~-40 store result score %pk_temp pk.enhanced_adventure.counter if entity @a[gamemode=!spectator,gamemode=!creative,dx=80,dy=15,dz=80]
# Search amount of higuru skeleton being in the room
execute at @e[type=marker,tag=pk_fight_engine_boss_room,limit=1,distance=..50] positioned ~-40 ~-2 ~-40 store result score %pk_temp_2 pk.enhanced_adventure.counter if entity @e[type=skeleton,tag=pk_higuru_skeleton,dx=80,dy=15,dz=80]

# If no valid player has been found, if a single player in phase 3 or if the amount of Higuru Skeletons in the room >3, skip the process, else, prepare
scoreboard players set %pk_temp_should_skip pk.common.value 0
execute if score %pk_temp pk.enhanced_adventure.counter matches 0 run scoreboard players set %pk_temp_should_skip pk.common.value 1
execute if score %pk_temp pk.enhanced_adventure.counter matches 1 if score %pk_temp pk.enhanced_adventure.boss.phase matches 3 run scoreboard players set %pk_temp_should_skip pk.common.value 1
execute if score %pk_temp_2 pk.enhanced_adventure.counter matches 4.. run scoreboard players set %pk_temp_should_skip pk.common.value 0
execute if score %pk_temp_should_skip pk.common.value matches 1 run function pk_enhanced_adventure_core:entities/higuru_guardian/behavior/reinforcement/skip
execute if score %pk_temp_should_skip pk.common.value matches 0 run function pk_enhanced_adventure_core:entities/higuru_guardian/behavior/reinforcement/start_prepare