data modify storage pk_enhanced_adventure:data Temp.Compare set from storage pk_enhanced_adventure:data Temp.Player.UUID
execute store success score %pk_temp pk.common.value run data modify storage pk_enhanced_adventure:data Temp.Compare set from entity @s Owner
execute if score %pk_temp pk.common.value matches 0 run function pk_enhanced_adventure_core:mechanics/bewitchments/robustness/arrow/initialize
