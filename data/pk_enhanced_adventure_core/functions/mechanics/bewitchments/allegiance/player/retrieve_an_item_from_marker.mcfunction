# Reset delay
scoreboard players set @s pk.enhanced_adventure.allegiance.delay 0

# Retrieve the relative marker and get an item from it 
tag @s add pk_current_player
scoreboard players operation %pk_temp pk.common.value = @s pk.enhanced_adventure.allegiance.id
execute positioned -30000000 0 1611 as @e[type=marker,tag=pk_allegiance_items_holder,distance=..0.1] if score %pk_temp pk.common.value = @s pk.enhanced_adventure.allegiance.id at @p[tag=pk_current_player] run function pk_enhanced_adventure_core:mechanics/bewitchments/allegiance/marker/give_an_item_to_player
tag @s remove pk_current_player

# Animations
particle dragon_breath ~ ~1 ~ 0.5 0.4 0.5 0.1 10
playsound item.totem.use ambient @a[distance=..50] ~ ~ ~ 0.4 1.4