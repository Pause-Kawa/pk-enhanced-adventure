data modify storage pk_enhanced_adventure:iris.input Search set value "barrel"
execute at @s anchored eyes positioned ^ ^ ^ run function pk_enhanced_adventure_core:helpers/iris/get_target
execute at @e[type=minecraft:marker,tag=pk.iris.ray.found_block] run say A function
kill @e[type=minecraft:marker,tag=pk.iris.ray]