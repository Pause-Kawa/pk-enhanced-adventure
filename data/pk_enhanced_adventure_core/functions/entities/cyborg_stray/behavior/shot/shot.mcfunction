# Summon storm dissipater's shockwave
execute anchored eyes positioned ^ ^ ^ facing entity @p eyes run summon marker ~ ~ ~ {Tags:["pk_enhanced_adventure_core_marker","pk_storm_dissipater_shockwave","pk_current_marker"]}
execute as @e[type=marker,tag=pk_current_marker,distance=..10,limit=1] at @s facing entity @p eyes run tp @s ^ ^ ^1.5 ~ ~

# Set the delay before the next shot
scoreboard players set @s pk.enhanced_adventure.delay 40

# Animations
playsound entity.warden.sonic_boom master @a[distance=..50] ^ ^ ^0.1 10 1.2
playsound item.trident.riptide_3 master @a[distance=..50] ^ ^ ^0.1 10 1.2
playsound block.respawn_anchor.deplete master @a[distance=..50] ^ ^ ^0.1 1 1.2