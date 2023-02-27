# Check if the villager comes from a custom villager from the datapack and has been cured from its zombie villager state
# Since villagers don't keep tags on conversion, we rely here on their specific offers to retrieve them
data modify storage pk_enhanced_adventure:data Temp.Entity set from entity @s {}
scoreboard players set %pk_has_custom_profession pk.common.value 0

# - Check for Alchemist
execute if data storage pk_enhanced_adventure:data Temp.Entity{VillagerData:{profession:"minecraft:cleric",type:"minecraft:swamp"},Offers:{Recipes:[{buy:{id:"minecraft:nether_wart",Count:22b}}]}} run function pk_enhanced_adventure_core:entities/villager/alchemist/on_cure
execute unless score %pk_has_custom_profession pk.common.value matches 1 if data storage pk_enhanced_adventure:data Temp.Entity{VillagerData:{profession:"minecraft:cleric",type:"minecraft:swamp"},Offers:{Recipes:[{buy:{id:"minecraft:blaze_powder",Count:10b}}]}} run function pk_enhanced_adventure_core:entities/villager/alchemist/on_cure

# - Check for Steam Worker
execute unless score %pk_has_custom_profession pk.common.value matches 1 if data storage pk_enhanced_adventure:data Temp.Entity{VillagerData:{profession:"minecraft:toolsmith",type:"minecraft:savanna"},Offers:{Recipes:[{buy:{id:"minecraft:redstone",Count:30b}}]}} run function pk_enhanced_adventure_core:entities/villager/tinkerer/on_cure
execute unless score %pk_has_custom_profession pk.common.value matches 1 if data storage pk_enhanced_adventure:data Temp.Entity{VillagerData:{profession:"minecraft:toolsmith",type:"minecraft:savanna"},Offers:{Recipes:[{buy:{id:"minecraft:amethyst_shard",Count:4b}}]}} run function pk_enhanced_adventure_core:entities/villager/tinkerer/on_cure

# Mark the villager as checked
tag @s add pk_enhanced_adventure_checked