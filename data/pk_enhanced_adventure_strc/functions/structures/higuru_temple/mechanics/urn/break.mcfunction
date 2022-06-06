# Loot
loot spawn ~ ~0.2 ~ loot pk_enhanced_adventure_strc:chests/higuru_temple/urn
# Break the blocks and remove the polished granite drop
setblock ~ ~ ~ air destroy
setblock ~ ~1 ~ air destroy
kill @e[type=item,nbt={Age:0s,Item:{id:"minecraft:polished_granite",Count:1b}},limit=1,sort=nearest,distance=..1]
# Animations
playsound minecraft:block.glass.break block @a ~ ~ ~ 1 0.5
particle minecraft:cloud ~ ~1 ~ 0.5 1 0.5 0.001 5
# Remove the urn marker
kill @s