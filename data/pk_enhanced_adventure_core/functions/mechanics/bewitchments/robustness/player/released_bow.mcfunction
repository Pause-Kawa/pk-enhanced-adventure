scoreboard players set @s pk.enhanced_adventure.robustness.delay 0
tag @s remove pk_pulling_robustness_bow
tag @s remove pk_has_robustness_boost

# Action that check if the player shot an arrow is refered in the event used_bow in function:
# @within function pk_enhanced_adventure_core:events/player/used_bow/trigger