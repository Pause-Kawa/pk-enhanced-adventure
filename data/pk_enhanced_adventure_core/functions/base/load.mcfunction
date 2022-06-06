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
# scoreboard objectives add pk.common.crafted.knowledge_book crafted:knowledge_book
scoreboard objectives add pk.enhanced_adventure.pos.x dummy
scoreboard objectives add pk.enhanced_adventure.pos.y dummy
scoreboard objectives add pk.enhanced_adventure.pos.z dummy
# General timer and delay
scoreboard objectives add pk.enhanced_adventure.timer dummy
scoreboard objectives add pk.enhanced_adventure.delay dummy
scoreboard objectives add pk.enhanced_adventure.sound_delay dummy
# General counter
scoreboard objectives add pk.enhanced_adventure.counter dummy

# ----------------------------------------
# Helpers
# ----------------------------------------
# RNG
function pk_enhanced_adventure_core:helpers/random/load

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
# forceload add -30000000 1600

# ----------------------------------------
# Dev
# ----------------------------------------
scoreboard players add %pk_enhanced_adventure_dev_mode pk.common.value 0

# Logs
tellraw @a [{"text":"Loaded ","color":"yellow"},{"text":"PK Enhanced Adventure","color":"aqua","bold":true},{"text":" successfully","color":"yellow"}]