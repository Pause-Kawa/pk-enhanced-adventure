# Revoke advancement
advancement revoke @s only pk_enhanced_adventure_core:interactions/placed_ancient_altar

# Find and replace the placed block
# - Segment fill commands to avoid fails if the player placed the Ancient Altar near a height limit of the map
fill ~-5 ~-1 ~-5 ~5 ~-1 ~5 command_block{auto:1b,Command:"function pk_enhanced_adventure_core:mechanics/ancient_altar/helpers/place"} replace dropper{Lock:"PlaceholderForAncientAltar§r"}
fill ~-5 ~-2 ~-5 ~5 ~-2 ~5 command_block{auto:1b,Command:"function pk_enhanced_adventure_core:mechanics/ancient_altar/helpers/place"} replace dropper{Lock:"PlaceholderForAncientAltar§r"}
fill ~-5 ~-3 ~-5 ~5 ~-3 ~5 command_block{auto:1b,Command:"function pk_enhanced_adventure_core:mechanics/ancient_altar/helpers/place"} replace dropper{Lock:"PlaceholderForAncientAltar§r"}
fill ~-5 ~-4 ~-5 ~5 ~-4 ~5 command_block{auto:1b,Command:"function pk_enhanced_adventure_core:mechanics/ancient_altar/helpers/place"} replace dropper{Lock:"PlaceholderForAncientAltar§r"}
fill ~-5 ~-5 ~-5 ~5 ~-5 ~5 command_block{auto:1b,Command:"function pk_enhanced_adventure_core:mechanics/ancient_altar/helpers/place"} replace dropper{Lock:"PlaceholderForAncientAltar§r"}
fill ~-5 ~ ~-5 ~5 ~ ~5 command_block{auto:1b,Command:"function pk_enhanced_adventure_core:mechanics/ancient_altar/helpers/place"} replace dropper{Lock:"PlaceholderForAncientAltar§r"}
fill ~-5 ~1 ~-5 ~5 ~1 ~5 command_block{auto:1b,Command:"function pk_enhanced_adventure_core:mechanics/ancient_altar/helpers/place"} replace dropper{Lock:"PlaceholderForAncientAltar§r"}
fill ~-5 ~2 ~-5 ~5 ~2 ~5 command_block{auto:1b,Command:"function pk_enhanced_adventure_core:mechanics/ancient_altar/helpers/place"} replace dropper{Lock:"PlaceholderForAncientAltar§r"}
fill ~-5 ~3 ~-5 ~5 ~3 ~5 command_block{auto:1b,Command:"function pk_enhanced_adventure_core:mechanics/ancient_altar/helpers/place"} replace dropper{Lock:"PlaceholderForAncientAltar§r"}
fill ~-5 ~4 ~-5 ~5 ~4 ~5 command_block{auto:1b,Command:"function pk_enhanced_adventure_core:mechanics/ancient_altar/helpers/place"} replace dropper{Lock:"PlaceholderForAncientAltar§r"}
fill ~-5 ~5 ~-5 ~5 ~5 ~5 command_block{auto:1b,Command:"function pk_enhanced_adventure_core:mechanics/ancient_altar/helpers/place"} replace dropper{Lock:"PlaceholderForAncientAltar§r"}