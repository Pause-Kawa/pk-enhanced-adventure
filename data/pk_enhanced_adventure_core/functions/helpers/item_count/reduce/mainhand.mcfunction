execute store result score %pk_temp pk.common.value run data get entity @s SelectedItem.Count
scoreboard players remove %pk_temp pk.common.value 1
item modify entity @s weapon.mainhand pk_enhanced_adventure_core:helpers/set_count