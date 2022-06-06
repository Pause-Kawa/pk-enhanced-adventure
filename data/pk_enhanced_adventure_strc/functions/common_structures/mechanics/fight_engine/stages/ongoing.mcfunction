# Waiting to be defeated (check if all relative entities has been killed or disappeared)
function pk_enhanced_adventure_strc:common_structures/mechanics/fight_engine/helpers/check_for_relative_entities
# Reset (if fight not defeated and there's no alive player not in spectator mode anymore in a radius of 50 blocks)
execute if entity @s[tag=pk_ongoing,tag=pk_resetable] unless entity @e[type=player,distance=..50,gamemode=!spectator] run function pk_enhanced_adventure_strc:common_structures/mechanics/fight_engine/helpers/reset