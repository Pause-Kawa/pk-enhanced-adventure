# Clear data
data remove storage pk_enhanced_adventure:data {}

# Remove scores
# Objective common to all PK data packs 
scoreboard objectives remove pk.common.value
scoreboard objectives remove pk.common.ray.hit
scoreboard objectives remove pk.common.ray.dist
# scoreboard objectives remove pk.common.crafted.knowledge_book crafted:knowledge_book
scoreboard objectives remove pk.enhanced_adventure.pos.x
scoreboard objectives remove pk.enhanced_adventure.pos.y
scoreboard objectives remove pk.enhanced_adventure.pos.z
# General scores for the data pack
scoreboard objectives remove pk.enhanced_adventure.timer
scoreboard objectives remove pk.enhanced_adventure.delay
scoreboard objectives remove pk.enhanced_adventure.sound_delay
scoreboard objectives remove pk.enhanced_adventure.counter
scoreboard objectives remove pk.enhanced_adventure.level
# Scores used for players
scoreboard objectives remove pk.enhanced_adventure.memorized.pos.x
scoreboard objectives remove pk.enhanced_adventure.memorized.pos.y
scoreboard objectives remove pk.enhanced_adventure.memorized.pos.z
scoreboard objectives remove pk.enhanced_adventure.memorized.dimension
# Used items
scoreboard objectives remove pk.enhanced_adventure.used.coas
scoreboard objectives remove pk.enhanced_adventure.used.wfoas
scoreboard objectives remove pk.enhanced_adventure.used.bow
# Custom items
scoreboard objectives remove pk.enhanced_adventure.magnet_hook.id
scoreboard objectives remove pk.enhanced_adventure.magnet_hook.delay
scoreboard objectives remove pk.enhanced_adventure.magnet_hook.tp_delay
scoreboard objectives remove pk.enhanced_adventure.ppoas.delay

# Logs
tellraw @a [{"text":"Uninstalled ","color":"red"},{"text":"PK Enhanced Adventure","color":"aqua","bold":true},{"text":" successfully","color":"red"}]