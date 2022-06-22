# Reset the used score
scoreboard players set @s pk.enhanced_adventure.used.coas 0

# Check the hand the item has been used from
execute if entity @s[predicate=pk_enhanced_adventure_core:hold/coas/in_mainhand] run function pk_enhanced_adventure_core:events/player/used_coas/from_mainhand
execute if entity @s[predicate=!pk_enhanced_adventure_core:hold/coas/in_mainhand,predicate=pk_enhanced_adventure_core:hold/coas/in_offhand] run function pk_enhanced_adventure_core:events/player/used_coas/from_offhand