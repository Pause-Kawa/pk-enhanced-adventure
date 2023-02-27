# Check if shot upward
execute if score %pk_temp pk.common.value matches 1000.. run tag @s add pk_should_dissipate_storm
execute if score %pk_temp pk.common.value matches 460.. unless data storage pk_enhanced_adventure:data Temp.Entity.Owner run tag @s add pk_should_dissipate_storm

# Converting arrow's Motion into rotation to trigger the animation (we need to use this trick since arrow's rotation is bugged)
data modify entity @s Pos set from entity @e[type=firework_rocket,tag=pk_current_firework_rocket,limit=1,distance=..0.1] Motion
execute positioned 0.0 0 0.0 facing entity @s feet positioned as @e[type=firework_rocket,tag=pk_current_firework_rocket,limit=1] run tp @s ^ ^ ^1.5 ~ ~
execute at @s run particle poof ^ ^ ^0.5 0 0.4 0 0.001 4