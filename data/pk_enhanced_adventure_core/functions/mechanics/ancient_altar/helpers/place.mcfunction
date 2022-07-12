# Place marker
execute align xyz run summon marker ~0.5 ~0.5 ~0.5 {Tags:["pk_enhanced_adventure_core_marker","pk_ancient_altar","pk_ancient_altar_current"]}
data modify entity @e[type=marker,tag=pk_ancient_altar_current,limit=1,distance=..0.1] data.Gui.Previous set from storage pk_enhanced_adventure:data AncientAltar.Gui.Default.Items
tag @e[type=marker,tag=pk_ancient_altar_current,distance=..0.1] remove pk_ancient_altar_current

# Place container
setblock ~ ~ ~ barrel{CustomName:'{"italic":false,"text":"Ancient Altar§r"}'}
data modify block ~ ~ ~ Items set from storage pk_enhanced_adventure:data AncientAltar.Gui.Default.Items

# Decorative entities
execute align xyz run summon falling_block ~0.500 ~-0.001 ~0.501 {Tags:["pk_enhanced_adventure_ancient_altar_decoration","pk_enhanced_adventure_falling_block"],BlockState:{Name:"minecraft:polished_basalt",Properties:{"axis":"z"}},NoGravity:1b,Time:-2147483648,Invulnerable:1b}
execute align xyz run summon falling_block ~0.500 ~-0.001 ~0.499 {Tags:["pk_enhanced_adventure_ancient_altar_decoration","pk_enhanced_adventure_falling_block"],BlockState:{Name:"minecraft:polished_basalt",Properties:{"axis":"z"}},NoGravity:1b,Time:-2147483648,Invulnerable:1b}
execute align xyz run summon falling_block ~0.499 ~ ~0.500 {Tags:["pk_enhanced_adventure_ancient_altar_decoration","pk_enhanced_adventure_falling_block"],BlockState:{Name:"minecraft:polished_basalt",Properties:{"axis":"x"}},NoGravity:1b,Time:-2147483648,Invulnerable:1b}
execute align xyz run summon falling_block ~0.501 ~ ~0.500 {Tags:["pk_enhanced_adventure_ancient_altar_decoration","pk_enhanced_adventure_falling_block"],BlockState:{Name:"minecraft:polished_basalt",Properties:{"axis":"x"}},NoGravity:1b,Time:-2147483648,Invulnerable:1b}
execute align xyz run summon falling_block ~0.5 ~0.001 ~0.5 {Tags:["pk_enhanced_adventure_ancient_altar_decoration","pk_enhanced_adventure_falling_block"],BlockState:{Name:"minecraft:polished_basalt",Properties:{"axis":"y"}},NoGravity:1b,Time:-2147483648,Invulnerable:1b}

# Animations
stopsound @a[distance=..32] block block.wood.place
playsound block.basalt.place block @a[distance=..32] ~ ~ ~ 1 1