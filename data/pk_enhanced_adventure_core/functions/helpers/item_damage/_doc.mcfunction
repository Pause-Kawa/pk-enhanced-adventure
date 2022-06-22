# 1. Set your parameters by modifying the Temp.ItemDamage storage data
# - Hand : Can be "mainhand" or "offhand"
# - IgnoreUnbreakingEnchantment : If 0b, will take the enchantment into account for the damage, with a chance of damaging the tool depending on the enchantment's level

# 2. Then use the trigger function 

data modify storage pk_enhanced_adventure:data Temp.ItemDamage set value {"Hand":"mainhand","IgnoreUnbreakingEnchantment":1b}
function pk_enhanced_adventure_core:helpers/item_damage/trigger

# data modify storage pk_enhanced_adventure:data Temp.ItemDamage set value {"Hand":"mainhand"}