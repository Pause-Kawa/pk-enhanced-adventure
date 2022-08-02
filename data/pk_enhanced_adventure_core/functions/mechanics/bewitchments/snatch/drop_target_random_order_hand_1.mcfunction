# If the entity only has a main hand item
scoreboard players set %pk_temp pk.common.value 1
execute if data storage pk_enhanced_adventure:data Temp.Entity.HandDropChances[0] store result score %pk_temp pk.common.value run data get storage pk_enhanced_adventure:data Temp.Entity.HandDropChances[0] 1000
execute if data storage pk_enhanced_adventure:data Temp.Entity.HandItems[0].id unless score %pk_temp pk.common.value matches ..0 run function pk_enhanced_adventure_core:mechanics/bewitchments/snatch/drop_target_mainhand_item

# If the entity only has an off hand item
scoreboard players set %pk_temp pk.common.value 1
execute unless entity @s[tag=pk_has_dropped_item] if data storage pk_enhanced_adventure:data Temp.Entity.HandDropChances[1] store result score %pk_temp pk.common.value run data get storage pk_enhanced_adventure:data Temp.Entity.HandDropChances[1] 1000
execute unless entity @s[tag=pk_has_dropped_item] if data storage pk_enhanced_adventure:data Temp.Entity.HandItems[1].id unless score %pk_temp pk.common.value matches ..0 run function pk_enhanced_adventure_core:mechanics/bewitchments/snatch/drop_target_offhand_item

# Clear tag
tag @s remove pk_has_dropped_item