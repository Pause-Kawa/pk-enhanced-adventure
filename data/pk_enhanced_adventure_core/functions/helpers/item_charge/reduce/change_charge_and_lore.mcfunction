# Change data in storage
# - Charge value
execute store result storage pk_enhanced_adventure:data Temp.DamageItem.Charge.Value short 1 run scoreboard players get %pk_temp_charge pk.common.value
# - Charge lore
setblock -30000000 0 1611 oak_sign{Text1:'[{"text":"Charge: ","color":"white","italic":false},{"score":{"name":"%pk_temp_charge","objective":"pk.common.value"}},{"text":" / "},{"score":{"name":"%pk_temp_charge_max","objective":"pk.common.value"}}]'}
data modify storage pk_enhanced_adventure:data Temp.DamageItem.Charge.Lore set from block -30000000 0 1611 Text1
setblock -30000000 0 1611 air

# Change data on player's item
execute if data storage pk_enhanced_adventure:data Temp.DamageItem{Hand:"mainhand"} run item modify entity @s weapon.mainhand pk_enhanced_adventure_core:helpers/set_charge
execute if data storage pk_enhanced_adventure:data Temp.DamageItem{Hand:"offhand"} run item modify entity @s weapon.offhand pk_enhanced_adventure_core:helpers/set_charge