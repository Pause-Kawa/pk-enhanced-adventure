# Mark as robustness arrow
tag @s add pk_robustness_arrow

# Multiply arrow's velocity by 20%
data modify storage pk_enhanced_adventure:data Temp.Entity.Motion set from entity @s Motion
execute store result storage pk_enhanced_adventure:data Temp.Entity.Motion[0] double 0.00012 run data get storage pk_enhanced_adventure:data Temp.Entity.Motion[0] 10000
execute store result storage pk_enhanced_adventure:data Temp.Entity.Motion[1] double 0.00012 run data get storage pk_enhanced_adventure:data Temp.Entity.Motion[1] 10000
execute store result storage pk_enhanced_adventure:data Temp.Entity.Motion[2] double 0.00012 run data get storage pk_enhanced_adventure:data Temp.Entity.Motion[2] 10000
data modify entity @s Motion set from storage pk_enhanced_adventure:data Temp.Entity.Motion

# Add percing I behavior
data modify entity @s PierceLevel set value 1b

# Play sound
execute at @p[tag=pk_current_player] run playsound item.trident.riptide_1 ambient @a[distance=..50] ~ ~ ~ 0.5 1.2