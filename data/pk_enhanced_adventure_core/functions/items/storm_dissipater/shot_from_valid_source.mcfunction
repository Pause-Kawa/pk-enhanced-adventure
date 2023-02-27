# Store arrow's Motion
execute store result score %pk_temp pk.common.value run data get entity @s Motion[1] 1000

# Summon the shockwave marker
tag @s add pk_current_firework_rocket
summon marker ~ ~ ~ {Tags:["pk_enhanced_adventure_core_marker","pk_storm_dissipater_shockwave","pk_current_marker"]}
execute as @e[type=marker,tag=pk_current_marker,distance=..0.1] run function pk_enhanced_adventure_core:items/storm_dissipater/shockwave/prepare
tag @s remove pk_current_firework_rocket

# Animations
playsound entity.warden.sonic_boom master @a[distance=..50] ^ ^ ^0.1 20 1.2
playsound item.trident.riptide_3 master @a[distance=..50] ^ ^ ^0.1 20 1.2
playsound block.respawn_anchor.deplete master @a[distance=..50] ^ ^ ^0.1 1 1.2

# Remove the firework rocket
kill @s