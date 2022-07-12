# Return item to user
data remove storage pk_enhanced_adventure:data AncientAltar.Gui.LockedSlots[0].Slot
execute at @p[tag=pk_current_player] run summon item ~ ~ ~ {Tags:["pk_current_item"],Item:{id:"stick",Count:1b},PickupDelay:0}
data modify entity @e[type=item,tag=pk_current_item,distance=..16,limit=1] Item set from storage pk_enhanced_adventure:data AncientAltar.Gui.LockedSlots[0]