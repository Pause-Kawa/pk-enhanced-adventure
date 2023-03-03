# Store the player memorized point dimension
scoreboard players set @s[predicate=pk_enhanced_adventure_core:location/dimension/overworld] pk.enhanced_adventure.memorized.dimension 0
scoreboard players set @s[predicate=pk_enhanced_adventure_core:location/dimension/the_nether] pk.enhanced_adventure.memorized.dimension -1
scoreboard players set @s[predicate=pk_enhanced_adventure_core:location/dimension/the_end] pk.enhanced_adventure.memorized.dimension 1

# Store memorial excerpt location in throwner scores
execute store result score @s pk.enhanced_adventure.memorized.pos.x run data get storage pk_enhanced_adventure:data Temp.Entity.Pos[0]
execute store result score @s pk.enhanced_adventure.memorized.pos.y run data get storage pk_enhanced_adventure:data Temp.Entity.Pos[1]
execute store result score @s pk.enhanced_adventure.memorized.pos.z run data get storage pk_enhanced_adventure:data Temp.Entity.Pos[2]

# Animations
particle minecraft:portal ~ ~0.3 ~ 0.3 0.5 0.3 0.01 100
particle minecraft:enchant ~ ~1 ~ 0.3 0.5 0.3 0.01 10
particle minecraft:poof ~ ~0.3 ~ 0.15 0.3 0.15 0.01 4
playsound minecraft:block.beacon.power_select ambient @a ~ ~ ~ 1 1.2
playsound minecraft:entity.elder_guardian.hurt ambient @a ~ ~ ~ 1 1.2

# Remove memorial excerpt and clear player tag
kill @e[type=item,tag=pk_current_memorial_excerpt,distance=..16]
tellraw @s {"text": "Point memorized"}