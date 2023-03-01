# Remove doors
fill ~3 ~ ~-1 ~3 ~3 ~1 air destroy
fill ~-3 ~ ~-1 ~-3 ~3 ~1 air destroy
fill ~-1 ~ ~3 ~1 ~3 ~3 air destroy
fill ~-1 ~ ~-3 ~1 ~3 ~-3 air destroy
kill @e[type=item,distance=..10,nbt={Item:{id:"minecraft:chiseled_polished_blackstone"},Age:0s}]
kill @e[type=item,distance=..10,nbt={Item:{id:"minecraft:polished_blackstone"},Age:0s}] 

# Remove marker
kill @s

# Sound
playsound entity.wither.shoot ambient @a[distance=..50] ~ ~ ~ 0.5 0.8