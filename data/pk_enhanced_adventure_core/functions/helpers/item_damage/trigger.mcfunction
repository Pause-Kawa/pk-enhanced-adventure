# Store the item to damage and initialize the damage score
execute if data storage pk_enhanced_adventure:data Temp.DamageItem{"Hand":"mainhand"} run data modify storage pk_enhanced_adventure:data Temp.DamageItem.Item set from entity @s SelectedItem
execute if data storage pk_enhanced_adventure:data Temp.DamageItem{"Hand":"offhand"} run data modify storage pk_enhanced_adventure:data Temp.DamageItem.Item set from entity @s Inventory[{Slot:-106b}]
data remove storage pk_enhanced_adventure:data Temp.DamageItem.Item.Slot
execute store result score %pk_temp_damage pk.common.value run data get storage pk_enhanced_adventure:data Temp.DamageItem.Item.tag.Damage

# Check if the item has an Unbreaking enchantment
scoreboard players set %pk_temp_unbreaking_lvl pk.common.value 0
execute unless data storage pk_enhanced_adventure:data Temp.DamageItem{"IgnoreUnbreakingEnchantment":1b} store result score %pk_temp_unbreaking_lvl pk.common.value run data get storage pk_enhanced_adventure:data Temp.DamageItem.Item.tag.Enchantments[{id:"minecraft:unbreaking"}].lvl
# - If there is no Unbreaking enchantment or it is ignored, continue the process
execute if score %pk_temp_unbreaking_lvl pk.common.value matches 0 run function pk_enhanced_adventure_core:helpers/item_damage/should_item_break
# - If there is an Unbreaking enchantment, apply a chance to not damage it
execute if score %pk_temp_unbreaking_lvl pk.common.value matches 1.. run function pk_enhanced_adventure_core:helpers/item_damage/unbreaking_enchantement_apply_chance