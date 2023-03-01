# ----------------------------------------
# Dev
# ----------------------------------------

execute if entity @a[tag=pk_dev,limit=1] at @e[type=marker] run particle soul_fire_flame ~ ~ ~ 0 0 0 0 1 normal @a[tag=pk_dev]

# ----------------------------------------
# Settings
# ----------------------------------------

# Set gamerule keepInventory to true for Allegiance bewitchment (can be disabled by changing the score value to 1)
execute unless score %pk_enhanced_adventure_settings_enable_allegiance_bewitchment pk.common.value matches 0 run gamerule keepInventory true

# ----------------------------------------
# Events
# ----------------------------------------

# Player joined back
execute as @a[scores={pk.enhanced_adventure.leave_game=1..}] at @s run function pk_enhanced_adventure_core:events/player/joined_back/trigger
# Player is dead
execute as @a[scores={pk.enhanced_adventure.death_count=1..}] at @s run function pk_enhanced_adventure_core:events/player/is_dead/trigger
# Player used carrot on a stick
execute as @a[scores={pk.enhanced_adventure.used.coas=1..}] at @s run function pk_enhanced_adventure_core:events/player/used_coas/check_hand
# Player used warped fungus on a stick
execute as @a[scores={pk.enhanced_adventure.used.wfoas=1..}] at @s run function pk_enhanced_adventure_core:events/player/used_wfoas/check_hand
# Player used bow
execute as @a[scores={pk.enhanced_adventure.used.bow=1..}] at @s run function pk_enhanced_adventure_core:events/player/used_bow/trigger

# ----------------------------------------
# Entities
# ----------------------------------------

# All
team join PKHiddenName @e[type=#pk_enhanced_adventure_core:tracked_mobs,tag=pk_hidden_name,team=!PKHiddenName]
execute as @e[type=#pk_enhanced_adventure_core:tracked_mobs,tag=pk_entity_fire_resistant] run data modify entity @s Fire set value 0s
# Air toggling (fix render issue for projectiles and items entities)
execute as @e[type=#pk_enhanced_adventure_core:air_toggling,tag=pk_enhanced_adventure_air_toggling] run function pk_enhanced_adventure_core:helpers/air_toggling/tick
# Firework rocket
execute as @e[type=firework_rocket,tag=!pk_enhanced_adventure_checked] at @s run function pk_enhanced_adventure_core:entities/firework_rocket/check
# Item
execute as @e[type=item,tag=!pk_enhanced_adventure_checked] at @s run function pk_enhanced_adventure_core:entities/item/check
execute as @e[type=item,tag=pk_enhanced_adventure_item_entity_to_track] at @s run function pk_enhanced_adventure_core:entities/item/tick
# Wildling Skeleton
execute as @e[type=skeleton,tag=pk_wildling_skeleton] at @s run function pk_enhanced_adventure_core:entities/wildling_skeleton/behavior/tick
execute as @e[type=wither_skeleton,tag=pk_wildling_voodoo] at @s run function pk_enhanced_adventure_core:entities/wildling_voodoo/behavior/tick
execute as @e[type=wither_skeleton,tag=pk_wildling_fraudster] at @s run function pk_enhanced_adventure_core:entities/wildling_fraudster/behavior/tick
# Cyborg Stray
execute as @e[type=stray,tag=pk_cyborg_stray] at @s run function pk_enhanced_adventure_core:entities/cyborg_stray/behavior/tick
# Marker
execute as @e[type=marker,tag=pk_enhanced_adventure_core_marker] at @s run function pk_enhanced_adventure_core:entities/marker/dispatcher
# Villager
execute as @e[type=villager,tag=!pk_enhanced_adventure_ignored] run function pk_enhanced_adventure_core:entities/villager/common/tick
# Zombie villager
execute as @e[type=zombie_villager,tag=!pk_enhanced_adventure_checked] at @s run function pk_enhanced_adventure_core:entities/zombie_villager/common/initialize
execute as @e[type=zombie_villager,tag=pk_enhanced_adventure_zombie_villager_custom_profession] at @s run function pk_enhanced_adventure_core:entities/zombie_villager/common/tick_custom_profession

# ----------------------------------------
# Items
# ----------------------------------------

# Magnet Hook
# - Player using the Magnet Hook
execute as @a[tag=pk_using_magnet_hook] at @s run function pk_enhanced_adventure_core:items/magnet_hook/player_tick
# - Clear obsolete latch points (can happen if a player is being killed using the Magnet Hook)
execute as @e[type=marker,tag=pk_magnet_hook_latch_point,tag=pk_reached] at @s unless entity @p[distance=..5] run kill @s
# Phenix Pepper On A Stick
execute as @a[tag=pk_using_ppoas] at @s run function pk_enhanced_adventure_core:items/phenix_pepper_on_a_stick/player_tick
execute as @e[type=#pk_enhanced_adventure_core:mobs,type=!#pk_enhanced_adventure_core:exclude_inflammable,tag=pk_hurt_by_ppoas] run function pk_enhanced_adventure_core:items/phenix_pepper_on_a_stick/target_tick

# ----------------------------------------
# Bewitchements
# ----------------------------------------

# Robustness
execute as @a[predicate=pk_enhanced_adventure_core:hold/item_with_robustness/in_any_hand] at @s run function pk_enhanced_adventure_core:mechanics/bewitchments/robustness/player/tick
execute as @e[type=#minecraft:arrows,tag=pk_robustness_arrow,tag=!pk_done] at @s run function pk_enhanced_adventure_core:mechanics/bewitchments/robustness/arrow/tick
# Allegiance (executing as alive players only)
execute as @e[type=player,tag=pk_waiting_for_allegiance_items] at @s run function pk_enhanced_adventure_core:mechanics/bewitchments/allegiance/player/tick_after_respawned
# Souls Magnetisation
function pk_enhanced_adventure_core:mechanics/bewitchments/souls_magnetisation/tick
# Wild Cushioning
function pk_enhanced_adventure_core:mechanics/bewitchments/wild_cushioning/tick
# Safeguard Instinct
execute as @a[predicate=pk_enhanced_adventure_core:wear/safeguard_instinct_item] at @s run function pk_enhanced_adventure_core:mechanics/bewitchments/safeguard_instinct/tick
# Impetuousity
execute as @a[tag=pk_has_impetuousity_boost] at @s run function pk_enhanced_adventure_core:mechanics/bewitchments/impetuousity/tick

# ----------------------------------------
# Tags
# ----------------------------------------

# Remove the tag that is used to know if the player is using the shield during this current tick
tag @a[tag=pk_enhanced_adventure_core_using_shield] remove pk_enhanced_adventure_core_using_shield