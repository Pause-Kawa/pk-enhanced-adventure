# _DEBUG LOGS
execute if score %pk_enhanced_adventure_debug_tick_log pk.common.value matches 1 run tellraw @a[tag=pk_dev] {"text":"FIGHT ENGINE - STAGE: Ongoing","color":"yellow"}

# Waiting to be defeated (check if all relative entities has been killed or disappeared)
function pk_enhanced_adventure_strc:common_structures/mechanics/fight_engine/helpers/check_for_relative_entities

# Reset (if fight not defeated and there's no alive player not in spectator mode anymore in a radius of 50 blocks)
execute if entity @s[tag=pk_stage_ongoing,tag=pk_resetable] unless entity @e[type=player,distance=..50,gamemode=!spectator] run function pk_enhanced_adventure_strc:common_structures/mechanics/fight_engine/helpers/reset

# Track ON_GOING hook
# Disabled by default for performances saves. In order to active it, add the pk_track_on_going_hook to the marker and uncomment this:
#execute if entity @s[tag=pk_track_on_going_hook] run function pk_enhanced_adventure_strc:common_structures/mechanics/fight_engine/hooks/on_going