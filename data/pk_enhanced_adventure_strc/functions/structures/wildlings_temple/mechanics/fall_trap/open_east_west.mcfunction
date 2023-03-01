scoreboard players set %temp pk.common.value 1

# Trigger the fall trap
fill ~-3 ~-1 ~-1 ~3 ~-1 ~1 air destroy
fill ~-3 ~-1 ~-1 ~-3 ~-1 ~1 vine[west=true]
fill ~3 ~-1 ~-1 ~3 ~-1 ~1 vine[east=true]

# Remove both markers
kill @e[type=marker,tag=pk_fall_trap,distance=..0.1]
kill @s