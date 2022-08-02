# Add tags
data modify entity @s Tags set value ["pk_enhanced_adventure_mob","pk_enhanced_adventure_zombie_villager_custom_profession","pk_alchemist","pk_hidden_name"]

# Set head
item replace entity @s armor.head with mangrove_propagule
data modify entity @s ArmorDropChances set value [0.085f,0.085f,0.085f,0.0f]