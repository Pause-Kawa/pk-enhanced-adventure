scoreboard players set @s pk.enhanced_adventure.delay 40
tag @s add pk_is_opening

# Animations
playsound entity.wither.spawn ambient @a[distance=..50] ~ ~ ~ 0.5 0.9
function pk_enhanced_adventure_strc:structures/wildlings_temple/mechanics/main_entrance/particles_0_85_deg
execute rotated ~90 ~ run function pk_enhanced_adventure_strc:structures/wildlings_temple/mechanics/main_entrance/particles_0_85_deg
execute rotated ~180 ~ run function pk_enhanced_adventure_strc:structures/wildlings_temple/mechanics/main_entrance/particles_0_85_deg
execute rotated ~270 ~ run function pk_enhanced_adventure_strc:structures/wildlings_temple/mechanics/main_entrance/particles_0_85_deg