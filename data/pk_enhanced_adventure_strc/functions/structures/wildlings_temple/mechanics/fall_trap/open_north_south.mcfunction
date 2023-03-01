scoreboard players set %temp pk.common.value 1

# Trigger the fall trap
fill ~-1 ~-1 ~-3 ~1 ~-1 ~3 air destroy
fill ~-1 ~-1 ~-3 ~1 ~-1 ~-3 vine[north=true]
fill ~-1 ~-1 ~3 ~1 ~-1 ~3 vine[south=true]

# Remove both markers
kill @e[type=marker,tag=pk_fall_trap,distance=..0.1]
kill @s