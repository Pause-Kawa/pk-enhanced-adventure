# Mark the player as using PPOAS
tag @s add pk_using_ppoas
tag @s add pk_current_player

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
playsound minecraft:block.furnace.fire_crackle ambient @a[distance=..50] ~ ~ ~ 1 1
playsound minecraft:entity.guardian.attack ambient @a[distance=..50] ~ ~ ~ 0.4 1.6
playsound entity.allay.item_taken ambient @a[distance=..50] ~ ~ ~ 0.2 1
function pk_enhanced_adventure_core:helpers/random/uniform_0_1000
execute if score $out pk.enhanced_adventure.random matches ..250 anchored eyes positioned ^ ^-0.5 ^0.5 run function pk_enhanced_adventure_core:items/phenix_pepper_on_a_stick/animations/1
execute if score $out pk.enhanced_adventure.random matches 251..500 anchored eyes positioned ^ ^-0.5 ^0.5 run function pk_enhanced_adventure_core:items/phenix_pepper_on_a_stick/animations/2
execute if score $out pk.enhanced_adventure.random matches 501..750 anchored eyes positioned ^ ^-0.5 ^0.5 run function pk_enhanced_adventure_core:items/phenix_pepper_on_a_stick/animations/3
execute if score $out pk.enhanced_adventure.random matches 751.. anchored eyes positioned ^ ^-0.5 ^0.5 run function pk_enhanced_adventure_core:items/phenix_pepper_on_a_stick/animations/4

# Remove the relative tag
tag @s remove pk_current_player