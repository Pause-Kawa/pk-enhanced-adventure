# Check if player has enough level
scoreboard players set %pk_levels pk.common.value 0
scoreboard players set %pk_has_enough_levels pk.common.value 0
execute store result score %pk_levels pk.common.value run xp query @p[tag=pk_current_player] levels
execute if score %pk_levels pk.common.value matches 50.. run scoreboard players set %pk_has_enough_levels pk.common.value 1

# Always succes if the player is in creative mode
execute if entity @p[tag=pk_current_player,gamemode=creative] run scoreboard players set %pk_has_enough_levels pk.common.value 1