advancement revoke @s only pk_enhanced_adventure_core:interactions/get_output_in_inventory

# Store player output item from inventory 
data modify storage pk_enhanced_adventure:data Temp.Item set from entity @s Inventory[{tag:{pkOutputStack:1b}}]

# Completly remove the pkOutputStack nbt from the output items stack
summon armor_stand ~ ~ ~ {Marker:1b,Invisible:1b,Tags:["pk_current_entity"]}
data modify entity @e[type=armor_stand,tag=pk_current_entity,distance=..0.1,limit=1] HandItems[0] set from storage pk_enhanced_adventure:data Temp.Item
data remove entity @e[type=armor_stand,tag=pk_current_entity,distance=..0.1,limit=1] HandItems[0].tag.pkOutputStack

# Replace items in the right slot
execute if data storage pk_enhanced_adventure:data Temp.Item{Slot:-106b} run item replace entity @s weapon.offhand from entity @e[type=armor_stand,tag=pk_current_entity,distance=..0.1,limit=1] weapon.mainhand
execute if data storage pk_enhanced_adventure:data Temp.Item{Slot:0b} run item replace entity @s hotbar.0 from entity @e[type=armor_stand,tag=pk_current_entity,distance=..0.1,limit=1] weapon.mainhand
execute if data storage pk_enhanced_adventure:data Temp.Item{Slot:1b} run item replace entity @s hotbar.1 from entity @e[type=armor_stand,tag=pk_current_entity,distance=..0.1,limit=1] weapon.mainhand
execute if data storage pk_enhanced_adventure:data Temp.Item{Slot:2b} run item replace entity @s hotbar.2 from entity @e[type=armor_stand,tag=pk_current_entity,distance=..0.1,limit=1] weapon.mainhand
execute if data storage pk_enhanced_adventure:data Temp.Item{Slot:3b} run item replace entity @s hotbar.3 from entity @e[type=armor_stand,tag=pk_current_entity,distance=..0.1,limit=1] weapon.mainhand
execute if data storage pk_enhanced_adventure:data Temp.Item{Slot:4b} run item replace entity @s hotbar.4 from entity @e[type=armor_stand,tag=pk_current_entity,distance=..0.1,limit=1] weapon.mainhand
execute if data storage pk_enhanced_adventure:data Temp.Item{Slot:5b} run item replace entity @s hotbar.5 from entity @e[type=armor_stand,tag=pk_current_entity,distance=..0.1,limit=1] weapon.mainhand
execute if data storage pk_enhanced_adventure:data Temp.Item{Slot:6b} run item replace entity @s hotbar.6 from entity @e[type=armor_stand,tag=pk_current_entity,distance=..0.1,limit=1] weapon.mainhand
execute if data storage pk_enhanced_adventure:data Temp.Item{Slot:7b} run item replace entity @s hotbar.7 from entity @e[type=armor_stand,tag=pk_current_entity,distance=..0.1,limit=1] weapon.mainhand
execute if data storage pk_enhanced_adventure:data Temp.Item{Slot:8b} run item replace entity @s hotbar.8 from entity @e[type=armor_stand,tag=pk_current_entity,distance=..0.1,limit=1] weapon.mainhand
execute if data storage pk_enhanced_adventure:data Temp.Item{Slot:9b} run item replace entity @s inventory.0 from entity @e[type=armor_stand,tag=pk_current_entity,distance=..0.1,limit=1] weapon.mainhand
execute if data storage pk_enhanced_adventure:data Temp.Item{Slot:10b} run item replace entity @s inventory.1 from entity @e[type=armor_stand,tag=pk_current_entity,distance=..0.1,limit=1] weapon.mainhand
execute if data storage pk_enhanced_adventure:data Temp.Item{Slot:11b} run item replace entity @s inventory.2 from entity @e[type=armor_stand,tag=pk_current_entity,distance=..0.1,limit=1] weapon.mainhand
execute if data storage pk_enhanced_adventure:data Temp.Item{Slot:12b} run item replace entity @s inventory.3 from entity @e[type=armor_stand,tag=pk_current_entity,distance=..0.1,limit=1] weapon.mainhand
execute if data storage pk_enhanced_adventure:data Temp.Item{Slot:13b} run item replace entity @s inventory.4 from entity @e[type=armor_stand,tag=pk_current_entity,distance=..0.1,limit=1] weapon.mainhand
execute if data storage pk_enhanced_adventure:data Temp.Item{Slot:14b} run item replace entity @s inventory.5 from entity @e[type=armor_stand,tag=pk_current_entity,distance=..0.1,limit=1] weapon.mainhand
execute if data storage pk_enhanced_adventure:data Temp.Item{Slot:15b} run item replace entity @s inventory.6 from entity @e[type=armor_stand,tag=pk_current_entity,distance=..0.1,limit=1] weapon.mainhand
execute if data storage pk_enhanced_adventure:data Temp.Item{Slot:16b} run item replace entity @s inventory.7 from entity @e[type=armor_stand,tag=pk_current_entity,distance=..0.1,limit=1] weapon.mainhand
execute if data storage pk_enhanced_adventure:data Temp.Item{Slot:17b} run item replace entity @s inventory.8 from entity @e[type=armor_stand,tag=pk_current_entity,distance=..0.1,limit=1] weapon.mainhand
execute if data storage pk_enhanced_adventure:data Temp.Item{Slot:18b} run item replace entity @s inventory.9 from entity @e[type=armor_stand,tag=pk_current_entity,distance=..0.1,limit=1] weapon.mainhand
execute if data storage pk_enhanced_adventure:data Temp.Item{Slot:19b} run item replace entity @s inventory.10 from entity @e[type=armor_stand,tag=pk_current_entity,distance=..0.1,limit=1] weapon.mainhand
execute if data storage pk_enhanced_adventure:data Temp.Item{Slot:20b} run item replace entity @s inventory.11 from entity @e[type=armor_stand,tag=pk_current_entity,distance=..0.1,limit=1] weapon.mainhand
execute if data storage pk_enhanced_adventure:data Temp.Item{Slot:21b} run item replace entity @s inventory.12 from entity @e[type=armor_stand,tag=pk_current_entity,distance=..0.1,limit=1] weapon.mainhand
execute if data storage pk_enhanced_adventure:data Temp.Item{Slot:22b} run item replace entity @s inventory.13 from entity @e[type=armor_stand,tag=pk_current_entity,distance=..0.1,limit=1] weapon.mainhand
execute if data storage pk_enhanced_adventure:data Temp.Item{Slot:23b} run item replace entity @s inventory.14 from entity @e[type=armor_stand,tag=pk_current_entity,distance=..0.1,limit=1] weapon.mainhand
execute if data storage pk_enhanced_adventure:data Temp.Item{Slot:24b} run item replace entity @s inventory.15 from entity @e[type=armor_stand,tag=pk_current_entity,distance=..0.1,limit=1] weapon.mainhand
execute if data storage pk_enhanced_adventure:data Temp.Item{Slot:25b} run item replace entity @s inventory.16 from entity @e[type=armor_stand,tag=pk_current_entity,distance=..0.1,limit=1] weapon.mainhand
execute if data storage pk_enhanced_adventure:data Temp.Item{Slot:26b} run item replace entity @s inventory.17 from entity @e[type=armor_stand,tag=pk_current_entity,distance=..0.1,limit=1] weapon.mainhand
execute if data storage pk_enhanced_adventure:data Temp.Item{Slot:27b} run item replace entity @s inventory.18 from entity @e[type=armor_stand,tag=pk_current_entity,distance=..0.1,limit=1] weapon.mainhand
execute if data storage pk_enhanced_adventure:data Temp.Item{Slot:28b} run item replace entity @s inventory.19 from entity @e[type=armor_stand,tag=pk_current_entity,distance=..0.1,limit=1] weapon.mainhand
execute if data storage pk_enhanced_adventure:data Temp.Item{Slot:29b} run item replace entity @s inventory.20 from entity @e[type=armor_stand,tag=pk_current_entity,distance=..0.1,limit=1] weapon.mainhand
execute if data storage pk_enhanced_adventure:data Temp.Item{Slot:30b} run item replace entity @s inventory.21 from entity @e[type=armor_stand,tag=pk_current_entity,distance=..0.1,limit=1] weapon.mainhand
execute if data storage pk_enhanced_adventure:data Temp.Item{Slot:31b} run item replace entity @s inventory.22 from entity @e[type=armor_stand,tag=pk_current_entity,distance=..0.1,limit=1] weapon.mainhand
execute if data storage pk_enhanced_adventure:data Temp.Item{Slot:32b} run item replace entity @s inventory.23 from entity @e[type=armor_stand,tag=pk_current_entity,distance=..0.1,limit=1] weapon.mainhand
execute if data storage pk_enhanced_adventure:data Temp.Item{Slot:33b} run item replace entity @s inventory.24 from entity @e[type=armor_stand,tag=pk_current_entity,distance=..0.1,limit=1] weapon.mainhand
execute if data storage pk_enhanced_adventure:data Temp.Item{Slot:34b} run item replace entity @s inventory.25 from entity @e[type=armor_stand,tag=pk_current_entity,distance=..0.1,limit=1] weapon.mainhand
execute if data storage pk_enhanced_adventure:data Temp.Item{Slot:35b} run item replace entity @s inventory.26 from entity @e[type=armor_stand,tag=pk_current_entity,distance=..0.1,limit=1] weapon.mainhand

# Remove the armor stand
kill @e[type=armor_stand,tag=pk_current_entity,distance=..0.1]