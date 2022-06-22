# Damage item in relative hand
execute store result storage pk_enhanced_adventure:data Temp.Damage short 1 run scoreboard players get %pk_temp_damage pk.common.value
execute if data storage pk_enhanced_adventure:data Temp.DamageItem{Hand:"mainhand"} run item modify entity @s weapon.mainhand pk_enhanced_adventure_core:helpers/set_damage
execute if data storage pk_enhanced_adventure:data Temp.DamageItem{Hand:"offhand"} run item modify entity @s weapon.offhand pk_enhanced_adventure_core:helpers/set_damage