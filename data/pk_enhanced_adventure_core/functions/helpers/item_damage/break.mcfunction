# Remove from player inventory
execute if data storage pk_enhanced_adventure:data Temp.DamageItem{Hand:"mainhand"} run item replace entity @s weapon.mainhand with air
execute if data storage pk_enhanced_adventure:data Temp.DamageItem{Hand:"offhand"} run item replace entity @s weapon.offhand with air

# Animations
# - Sound
execute positioned ^ ^ ^-0.5 run playsound entity.item.break ambient @a ~ ~ ~ 1 1
# - Particle
execute if data storage pk_enhanced_adventure:data Temp.DamageItem.Item{id:"minecraft:carrot_on_a_stick"} run particle item minecraft:carrot_on_a_stick ~ ~-0.18 ~ 0 0.1 0 0.08 4
execute if data storage pk_enhanced_adventure:data Temp.DamageItem.Item{id:"minecraft:warped_fungus_on_a_stick"} run particle item minecraft:warped_fungus_on_a_stick ~ ~-0.18 ~ 0 0.1 0 0.08 4