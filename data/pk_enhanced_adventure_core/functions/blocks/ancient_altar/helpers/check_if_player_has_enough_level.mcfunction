# Check if player has enough level (always succes if the player is in creative mode)
scoreboard players set %pk_has_enough_levels pk.common.value 0
execute if entity @p[tag=pk_current_player,level=50..] run scoreboard players set %pk_has_enough_levels pk.common.value 1
execute if entity @p[tag=pk_current_player,gamemode=creative] run scoreboard players set %pk_has_enough_levels pk.common.value 1