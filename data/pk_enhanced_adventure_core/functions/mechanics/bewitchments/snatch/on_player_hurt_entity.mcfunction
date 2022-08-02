# Remove advancement
advancement revoke @s only pk_enhanced_adventure_core:interactions/hurt_entity_with_snatch_item

# Randomly trigger the effect
function pk_enhanced_adventure_core:helpers/random/uniform_0_1000
tag @s add pk_current_player
tellraw @s {"score":{"name": "$out","objective": "pk.enhanced_adventure.random"}}
execute if score $out pk.enhanced_adventure.random matches ..250 run function pk_enhanced_adventure_core:mechanics/bewitchments/snatch/start_ray
tag @s remove pk_current_player