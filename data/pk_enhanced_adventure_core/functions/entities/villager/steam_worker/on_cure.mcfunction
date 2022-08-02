# Store data
execute store result score @s pk.enhanced_adventure.level run data get storage pk_enhanced_adventure:data Temp.Entity.VillagerData.level

# Add tags
data modify entity @s Tags set value ["pk_enhanced_adventure_mob","pk_villager","pk_steam_worker","pk_hidden_name","pk_reached_level_1"]
tag @s[scores={pk.enhanced_adventure.level=2..}] add pk_reached_level_2
tag @s[scores={pk.enhanced_adventure.level=3..}] add pk_reached_level_3
tag @s[scores={pk.enhanced_adventure.level=4..}] add pk_reached_level_4
tag @s[scores={pk.enhanced_adventure.level=5..}] add pk_reached_level_5

# Set head
item replace entity @s armor.head with player_head{SkullOwner:{Id:[I;-385331844,466109866,-1849554646,-1587364697],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZmU2NTUxNmQ4MWFjOTYzZGJjMjQ4NTEzOGRkZGNmOTQzZDdmNzIxMWUzN2VmZWNkNWE1ZmI4ZjVhZDQ5MjAifX19"}]}}}
data modify entity @s ArmorDropChances set value [0.085f,0.085f,0.085f,0.0f]