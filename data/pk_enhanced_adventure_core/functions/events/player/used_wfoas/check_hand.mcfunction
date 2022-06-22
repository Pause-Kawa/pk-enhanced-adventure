# Reset the used score
scoreboard players set @s pk.enhanced_adventure.used.wfoas 0

# Check the hand the item has been used from
execute if entity @s[predicate=pk_enhanced_adventure_core:hold/wfoas/in_mainhand] run function pk_enhanced_adventure_core:events/player/used_wfoas/from_mainhand
execute if entity @s[predicate=!pk_enhanced_adventure_core:hold/wfoas/in_mainhand,predicate=pk_enhanced_adventure_core:hold/wfoas/in_offhand] run function pk_enhanced_adventure_core:events/player/used_wfoas/from_offhand