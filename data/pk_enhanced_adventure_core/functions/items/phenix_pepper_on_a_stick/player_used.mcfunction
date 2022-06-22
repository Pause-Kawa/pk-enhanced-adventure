# Mark the player as using PPOAS
tag @s add pk_using_ppoas

# Reduce durability on use
data modify storage pk_enhanced_adventure:data Temp.DamageItem set value {Hand:"mainhand"}
data modify storage pk_enhanced_adventure:data Temp.DamageItem.Hand set from storage pk_enhanced_adventure:data Temp.UsedHand
function pk_enhanced_adventure_core:helpers/item_charge/reduce/trigger

# Slow player
scoreboard players set @s pk.enhanced_adventure.ppoas.delay 5
attribute @s generic.movement_speed modifier add 1-1-16-11-3 "Using PPOAS" -0.04147 add

# Start ray
scoreboard players set %pk_temp pk.common.ray.dist 0
scoreboard players set %pk_temp pk.common.ray.hit 0
execute anchored eyes positioned ^ ^ ^ run function pk_enhanced_adventure_core:items/phenix_pepper_on_a_stick/helpers/ray

# Animations
playsound minecraft:block.furnace.fire_crackle ambient @a ~ ~ ~ 1 1.4
playsound minecraft:entity.guardian.attack ambient @a ~ ~ ~ 0.85 1.85