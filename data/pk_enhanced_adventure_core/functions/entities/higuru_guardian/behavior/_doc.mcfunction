# No matter when:
# ----------------------------------------
# - The main behavior (weapon switching and sounds) is managed through the ticked behavior function
# - Out of interphases: if the players count in a distance of <=50 is >1, the boss call extra reinforcement every 30 seconds (+2 mobs per extra player)

# Phase 1: 
# ----------------------------------------
# - The boss is just attacking the player

# Interphase 1-2: When it reaches 2/3 of its max health
# ----------------------------------------
# - 1. The boss is teleported behind the soil + particles + invisible + invulnerable + NoGravity 
# - 2. A sound plays 
# - 3. The boss is teleported at a random corner + attack damage upgrade
# - 4. Weaker clones are summoned at each other corners + real one lost invisibility and NoGravity + particles and sound on all entities
# (Clones make another type of sound and need to be hurt three time to disappear)

# Phase 2:
# ----------------------------------------
# (Nothing more to track)

# Interphase 2-3: When it reaches 1/3 of its max health
# ----------------------------------------
# - 1. The boss is teleported behind the soil + particles + invisible + invulnerable
# - 2. A sound plays 
# - 3. The boss is teleported at the center of the room + get short levitation effect + particles + sounds + NoGravity 
# - 4. Summon 3 invisible invulnerable charged creepers on it + set a shield level of 3 + remove invisiblity and invulnerable of the boss

# Phase 3:
# ----------------------------------------
# - Particles are displayed on the boss, their amount depend on its shield level
# - The boss shot a projectile toward each player every 5 seconds
# - The projectile slowly follow the player (like the projectile of shulker)
# - When they hit an entity/block, they run a kind of magic explosion animation on the landing point, and deal short wither effects around
# - When they hit the wither, they remove one of the creeper and reduce its shield level by 1
# - Projectiles have a delay of 20 ticks before they can damage the boss

# Interphase 3-4:
# ----------------------------------------
# 1. Sound + particle that show the shield is broken
# 2. Boss become vulnerable again and lose NoGravity + speed upgrade

# Phase 4:
# ----------------------------------------
# Extra reinforcement are now called every 15 seconds