data modify storage pk_enhanced_adventure:data Temp.Item set value {Slot:14b,id:"minecraft:barrier",Count:1b,tag:{pkItemGUI:1b,display:{Name:'{"color":"red","italic":false,"text":"Too expensive!"}',Lore:['{"italic":false,"text":"Bewitchments require the player to have"}','{"italic":false,"text":"at least 50 levels to be applied"}']}}}

# Update the block content and current storage
data modify block ~ ~ ~ Items append from storage pk_enhanced_adventure:data Temp.Item
data modify storage pk_enhanced_adventure:data AncientAltar.Gui.Current set from block ~ ~ ~ Items