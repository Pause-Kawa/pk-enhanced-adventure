scoreboard players set @s pk.enhanced_adventure.ppoas.hurt_time 5
tag @s add pk_hurt_by_ppoas
execute store result score %pk_temp pk.common.value run data get entity @s Health
scoreboard players remove %pk_temp pk.common.value 1
execute if score %pk_temp pk.common.value matches 0 run kill @s
execute if score %pk_temp pk.common.value matches 1.. store result entity @s Health float 1 run scoreboard players get %pk_temp pk.common.value