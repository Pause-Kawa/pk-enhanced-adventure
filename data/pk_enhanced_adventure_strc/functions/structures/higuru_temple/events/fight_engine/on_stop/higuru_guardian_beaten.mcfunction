# Remove remaining levers
execute positioned ~-40 ~-2 ~-40 as @e[type=marker,tag=pk_higuru_temple_marker,tag=pk_lever,dx=80,dy=60,dz=80] at @s run function pk_enhanced_adventure_strc:structures/higuru_temple/mechanics/statue_lever/lever_remove

# Open all remaining doors
execute positioned ~-40 ~-2 ~-40 as @e[type=marker,tag=pk_higuru_temple_marker,tag=pk_inner_door,tag=pk_horizontal_inner_door,dx=80,dy=60,dz=80] at @s run function pk_enhanced_adventure_strc:structures/higuru_temple/mechanics/inner_door/horizontal_open
execute positioned ~-40 ~-2 ~-40 as @e[type=marker,tag=pk_higuru_temple_marker,tag=pk_inner_door,tag=pk_vertical_inner_door,dx=80,dy=60,dz=80] at @s run function pk_enhanced_adventure_strc:structures/higuru_temple/mechanics/inner_door/vertical_open
execute positioned ~-40 ~-2 ~-40 as @e[type=marker,tag=pk_higuru_temple_marker,tag=pk_main_entrance,dx=80,dy=60,dz=80] at @s run function pk_enhanced_adventure_strc:structures/higuru_temple/mechanics/main_entrance/open

# Remove all fight trigger and fight engine
execute positioned ~-40 ~-2 ~-40 run kill @e[type=marker,tag=pk_fight_engine,dx=80,dy=60,dz=80]
execute positioned ~-40 ~-2 ~-40 run kill @e[type=marker,tag=pk_fight_trigger,dx=80,dy=60,dz=80]

# Remove all the structure markers except urns markers
execute positioned ~-40 ~-2 ~-40 run kill @e[type=marker,tag=pk_higuru_temple_marker,tag=!pk_urn,dx=80,dy=60,dz=80]