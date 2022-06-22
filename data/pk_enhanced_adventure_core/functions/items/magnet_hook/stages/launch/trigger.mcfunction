# Add the using tag, reset the player use delay and assing a new id of magnet hook use
tag @s add pk_using_magnet_hook
scoreboard players set @s pk.enhanced_adventure.magnet_hook.delay 40
scoreboard players add %pk_magnet_hook_id pk.common.value 1
scoreboard players operation @s pk.enhanced_adventure.magnet_hook.id = %pk_magnet_hook_id pk.common.value

# If the player is already hunging with magnet hook, release it

# Reduce durability on use
data modify storage pk_enhanced_adventure:data Temp.DamageItem set value {Hand:"mainhand"}
data modify storage pk_enhanced_adventure:data Temp.DamageItem.Hand set from storage pk_enhanced_adventure:data Temp.UsedHand
function pk_enhanced_adventure_core:helpers/item_charge/reduce/trigger

# Start ray
scoreboard players set %pk_temp pk.common.ray.dist 0
scoreboard players set %pk_temp pk.common.ray.hit 0
execute anchored eyes positioned ^ ^ ^ run function pk_enhanced_adventure_core:items/magnet_hook/stages/launch/ray

# Animations
playsound minecraft:entity.egg.throw ambient @a ~ ~ ~ 1 1.35