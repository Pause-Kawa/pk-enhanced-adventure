# Recursively store Reinforcing entities
scoreboard players remove %pk_reinforcing_total pk.common.value 1
data modify storage pk_enhanced_adventure:data Temp.Entities append from storage pk_enhanced_adventure:data Temp.Engine.Reinforcing[]
execute if score %pk_reinforcing_total pk.common.value matches 1.. run function pk_enhanced_adventure_strc:common_structures/mechanics/fight_engine/helpers/set_reinforcing_recursively