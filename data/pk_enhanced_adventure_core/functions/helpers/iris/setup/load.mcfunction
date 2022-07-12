# Fork from Aeldrion's Iris datapack
# Src of original data pack: https://github.com/Aeldrion/Iris

# Data-pack Helper Plus storage definitions
#define storage pk_enhanced_adventure:iris.data
#define storage pk_enhanced_adventure:iris.input
#define storage pk_enhanced_adventure:iris.output

execute unless data storage pk_enhanced_adventure:iris.data is_setup run function pk_enhanced_adventure_core:helpers/iris/setup/scoreboard
execute unless data storage pk_enhanced_adventure:iris.data is_setup run function pk_enhanced_adventure_core:helpers/iris/setup/storage