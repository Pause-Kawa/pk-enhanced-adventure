# ----------------------------------------
# Storages
# ----------------------------------------
# Data-pack Helper Plus storage definitions
#define storage pk_enhanced_adventure:data

# ----------------------------------------
# Scores
# ----------------------------------------
# Objective common to all PK data packs 
scoreboard objectives add pk.common.value dummy
scoreboard objectives add pk.common.ray.hit dummy
scoreboard objectives add pk.common.ray.dist dummy
scoreboard objectives add pk.common.air_toggling.delay dummy
# General scores for the data pack
scoreboard objectives add pk.enhanced_adventure.pos.x dummy
scoreboard objectives add pk.enhanced_adventure.pos.y dummy
scoreboard objectives add pk.enhanced_adventure.pos.z dummy
scoreboard objectives add pk.enhanced_adventure.motion.y dummy
scoreboard objectives add pk.enhanced_adventure.timer dummy
scoreboard objectives add pk.enhanced_adventure.delay dummy
scoreboard objectives add pk.enhanced_adventure.sound_delay dummy
scoreboard objectives add pk.enhanced_adventure.counter dummy
scoreboard objectives add pk.enhanced_adventure.level dummy
# Scores used for players
scoreboard objectives add pk.enhanced_adventure.memorized.pos.x dummy
scoreboard objectives add pk.enhanced_adventure.memorized.pos.y dummy
scoreboard objectives add pk.enhanced_adventure.memorized.pos.z dummy
scoreboard objectives add pk.enhanced_adventure.memorized.dimension dummy
scoreboard objectives add pk.enhanced_adventure.leave_game custom:leave_game
scoreboard objectives add pk.enhanced_adventure.death_count deathCount
# Used items
scoreboard objectives add pk.enhanced_adventure.used.coas used:carrot_on_a_stick
scoreboard objectives add pk.enhanced_adventure.used.wfoas used:warped_fungus_on_a_stick
scoreboard objectives add pk.enhanced_adventure.used.bow used:bow
# Custom items
scoreboard objectives add pk.enhanced_adventure.magnet_hook.id dummy
scoreboard objectives add pk.enhanced_adventure.magnet_hook.delay dummy
scoreboard objectives add pk.enhanced_adventure.magnet_hook.tp_delay dummy
scoreboard objectives add pk.enhanced_adventure.ppoas.delay dummy
# Custom mechanics
scoreboard objectives add pk.enhanced_adventure.ancient_altar.interaction.id dummy
scoreboard objectives add pk.enhanced_adventure.allegiance.id dummy
scoreboard objectives add pk.enhanced_adventure.allegiance.delay dummy
scoreboard objectives add pk.enhanced_adventure.robustness.delay dummy
# Define constants
scoreboard players set %pk_const_1000 pk.common.value 1000

# ----------------------------------------
# Helpers
# ----------------------------------------
# Iris
function pk_enhanced_adventure_core:helpers/iris/setup/load
# RNG
function pk_enhanced_adventure_core:helpers/random/load

# ----------------------------------------
# Mechanics
# ----------------------------------------
# Define Ancient Altar GUI
function pk_enhanced_adventure_core:blocks/ancient_altar/helpers/load
# Bewitchments 
# - Force the keepInventory gamerule for Allegiance mechanic
execute unless score %pk_enhanced_adventure_settings_enable_allegiance_bewitchment pk.common.value matches 0..1 run scoreboard players set %pk_enhanced_adventure_settings_enable_allegiance_bewitchment pk.common.value 1

# ----------------------------------------
# Teams
# ----------------------------------------
# Hide name for some entities
team add PKHiddenName
team modify PKHiddenName nametagVisibility never

# ----------------------------------------
# Forceload
# ----------------------------------------
# Forceloaded chunk (following Phi datapack standards)
forceload add -30000000 1600

# ----------------------------------------
# Dev
# ----------------------------------------
scoreboard players add %pk_enhanced_adventure_dev_mode pk.common.value 0

# ----------------------------------------
# Logs
# ----------------------------------------
tellraw @a [{"text":"Loaded ","color":"yellow"},{"text":"PK Enhanced Adventure","color":"aqua","bold":true},{"text":" successfully","color":"yellow"}]