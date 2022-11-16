scoreboard players add @s pk.enhanced_adventure.counter 1
execute store result score %temp pk.common.value run data get entity @s data.NeededActions
execute if score %temp pk.common.value = @s pk.enhanced_adventure.counter run function pk_enhanced_adventure_strc:structures/higuru_temple/mechanics/statue_target/event_trigger