execute as @e[type=item,tag=pk_souls_magnetisation_attracted] run function pk_enhanced_adventure_core:mechanics/bewitchments/souls_magnetisation/item/stop_attraction
execute as @a[predicate=pk_enhanced_adventure_core:hold/item_with_souls_magnetisation/in_any_hand] at @s run function pk_enhanced_adventure_core:mechanics/bewitchments/souls_magnetisation/player/tick