# Choose pattern to summon entities
scoreboard players set %pk_temp pk.common.value 0
execute store result score %pk_temp pk.common.value run data get storage pk_enhanced_adventure:data Temp.Entities
execute if score %pk_temp pk.common.value matches 1 run function pk_enhanced_adventure_strc:common_structures/mechanics/common_engines/summon_patterns/1
execute if score %pk_temp pk.common.value matches 2 run function pk_enhanced_adventure_strc:common_structures/mechanics/common_engines/summon_patterns/2
execute if score %pk_temp pk.common.value matches 3 run function pk_enhanced_adventure_strc:common_structures/mechanics/common_engines/summon_patterns/3
execute if score %pk_temp pk.common.value matches 4 run function pk_enhanced_adventure_strc:common_structures/mechanics/common_engines/summon_patterns/4
execute if score %pk_temp pk.common.value matches 5 run function pk_enhanced_adventure_strc:common_structures/mechanics/common_engines/summon_patterns/5
execute if score %pk_temp pk.common.value matches 6 run function pk_enhanced_adventure_strc:common_structures/mechanics/common_engines/summon_patterns/6
execute if score %pk_temp pk.common.value matches 7 run function pk_enhanced_adventure_strc:common_structures/mechanics/common_engines/summon_patterns/7
execute if score %pk_temp pk.common.value matches 8 run function pk_enhanced_adventure_strc:common_structures/mechanics/common_engines/summon_patterns/8
execute if score %pk_temp pk.common.value matches 9.. run function pk_enhanced_adventure_strc:common_structures/mechanics/common_engines/summon_patterns/default

# Animations
function pk_enhanced_adventure_strc:common_structures/mechanics/common_engines/spawn_animations_on_engine