# Prepare item's Item data and initialize air toggling score
data modify entity @s Item set from storage pk_enhanced_adventure:data Temp.Items[-1]
scoreboard players set @s pk.common.air_toggling.delay 60

# Set a random motion (previously defined $min to 0 and $max to 40)
data modify storage pk_enhanced_adventure:data Temp.Entity.Motion set value [0.0d,0.1d,0.0d]
function pk_enhanced_adventure_core:helpers/random/uniform
scoreboard players remove $out pk.enhanced_adventure.random 20
execute store result storage pk_enhanced_adventure:data Temp.Entity.Motion[0] double 0.01 run scoreboard players get $out pk.enhanced_adventure.random
function pk_enhanced_adventure_core:helpers/random/uniform
scoreboard players remove $out pk.enhanced_adventure.random 20
execute store result storage pk_enhanced_adventure:data Temp.Entity.Motion[2] double 0.01 run scoreboard players get $out pk.enhanced_adventure.random
data modify entity @s Motion set from storage pk_enhanced_adventure:data Temp.Entity.Motion

# Remove tag
tag @s remove pk_current_item