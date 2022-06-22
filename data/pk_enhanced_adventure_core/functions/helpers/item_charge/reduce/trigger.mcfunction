# Store the item to reduce charge
execute if data storage pk_enhanced_adventure:data Temp.DamageItem{"Hand":"mainhand"} run data modify storage pk_enhanced_adventure:data Temp.DamageItem.Item set from entity @s SelectedItem
execute if data storage pk_enhanced_adventure:data Temp.DamageItem{"Hand":"offhand"} run data modify storage pk_enhanced_adventure:data Temp.DamageItem.Item set from entity @s Inventory[{Slot:-106b}]

# Set the charge and charge max score and reduce the charge score
execute store result score %pk_temp_charge pk.common.value run data get storage pk_enhanced_adventure:data Temp.DamageItem.Item.tag.pkCharge
execute store result score %pk_temp_charge_max pk.common.value run data get storage pk_enhanced_adventure:data Temp.DamageItem.Item.tag.pkChargeMax
scoreboard players remove %pk_temp_charge pk.common.value 1

# Trigger reduction or damaging and reset depending on the current charge value
execute if score %pk_temp_charge pk.common.value matches 1.. run function pk_enhanced_adventure_core:helpers/item_charge/reduce/change_charge_and_lore
execute if score %pk_temp_charge pk.common.value matches ..0 run function pk_enhanced_adventure_core:helpers/item_charge/reduce/damage