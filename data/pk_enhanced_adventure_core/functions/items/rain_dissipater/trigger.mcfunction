# Clear the weather for a random time
weather clear 0
# Animations
summon minecraft:firework_rocket ~ ~ ~ {LifeTime:0,FireworksItem:{id:"minecraft:firework_rocket",Count:1b,tag:{Fireworks:{Explosions:[{Type:1b,Flicker:1b,Colors:[I;16777215],FadeColors:[I;56831]}]}}}}
summon minecraft:firework_rocket ~-4 ~ ~ {LifeTime:0,FireworksItem:{id:"minecraft:firework_rocket",Count:1b,tag:{Fireworks:{Explosions:[{Type:4b,Flicker:1b,Colors:[I;16777215],FadeColors:[I;56831]}]}}}}
summon minecraft:firework_rocket ~4 ~ ~ {LifeTime:0,FireworksItem:{id:"minecraft:firework_rocket",Count:1b,tag:{Fireworks:{Explosions:[{Type:4b,Flicker:1b,Colors:[I;16777215],FadeColors:[I;56831]}]}}}}
summon minecraft:firework_rocket ~ ~ ~-4 {LifeTime:0,FireworksItem:{id:"minecraft:firework_rocket",Count:1b,tag:{Fireworks:{Explosions:[{Type:4b,Flicker:1b,Colors:[I;16777215],FadeColors:[I;56831]}]}}}}
summon minecraft:firework_rocket ~ ~ ~4 {LifeTime:0,FireworksItem:{id:"minecraft:firework_rocket",Count:1b,tag:{Fireworks:{Explosions:[{Type:4b,Flicker:1b,Colors:[I;16777215],FadeColors:[I;56831]}]}}}}
playsound minecraft:block.conduit.activate ambient @a ~ ~ ~ 120 1.65
playsound minecraft:item.trident.riptide_3 ambient @a ~ ~ ~ 120 0.15
# Remove the arrow
kill @s