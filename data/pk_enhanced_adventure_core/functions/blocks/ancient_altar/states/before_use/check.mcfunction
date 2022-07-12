# Check if the Ancient Altar is already used by another player
execute if data block ~ ~ ~ Lock run function pk_enhanced_adventure_core:blocks/ancient_altar/states/before_use/warn_already_in_use
execute unless data block ~ ~ ~ Lock run function pk_enhanced_adventure_core:blocks/ancient_altar/states/before_use/initialize