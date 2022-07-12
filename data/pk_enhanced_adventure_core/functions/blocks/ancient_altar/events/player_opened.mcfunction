# Revoke advancement
advancement revoke @s only pk_enhanced_adventure_core:interactions/opened_ancient_altar

# Find the targeted block
data modify storage pk_enhanced_adventure:iris.input Search set value "ancient_altar"
execute at @s anchored eyes positioned ^ ^ ^ run function pk_enhanced_adventure_core:helpers/iris/get_target
execute at @e[type=minecraft:marker,tag=pk.iris.ray.found_block] run function pk_enhanced_adventure_core:blocks/ancient_altar/states/before_use/check
kill @e[type=minecraft:marker,tag=pk.iris.ray]

# Stop sound
stopsound @a[distance=..32] block block.barrel.open