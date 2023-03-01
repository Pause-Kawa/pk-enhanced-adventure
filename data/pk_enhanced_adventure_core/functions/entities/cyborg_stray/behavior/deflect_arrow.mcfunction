# Summon another arrow to prevent Motion render glitches
data modify storage pk_enhanced_adventure:data Temp.Entity set from entity @s {}
data modify storage pk_enhanced_adventure:data Temp.Tags set from storage pk_enhanced_adventure:data Temp.Entity.Tags
data remove storage pk_enhanced_adventure:data Temp.Entity.Tags
data remove storage pk_enhanced_adventure:data Temp.Entity.Motion
execute if entity @s[type=arrow] run summon arrow ~ ~ ~ {Tags:["pk_current_arrow","pk_deflected"],damage:0d}
execute if entity @s[type=spectral_arrow] run summon spectral_arrow ~ ~ ~ {Tags:["pk_current_arrow","pk_deflected"],damage:0d}
data modify entity @e[type=#arrows,tag=pk_current_arrow,distance=..0.1,limit=1] {} set from storage pk_enhanced_adventure:data Temp.Entity
data modify entity @e[type=#arrows,tag=pk_current_arrow,distance=..0.1,limit=1] Tags append from storage pk_enhanced_adventure:data Temp.Entity.Tags[]
tag @e[type=#arrows,tag=pk_current_arrow,distance=..0.1,limit=1] remove pk_current_arrow

# Animations
particle sculk_charge_pop ~ ~ ~ 0 0 0 0.001 1
particle electric_spark ~ ~ ~ 0.5 0.5 0.5 0.1 10
playsound block.respawn_anchor.deplete hostile @a ~ ~ ~ 2 1.4

# Remove current arrow
kill @s