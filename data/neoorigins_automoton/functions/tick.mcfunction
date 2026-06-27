# Top-level tick function: run once per tick

# Update bossbar progress based on average stress of players with the origin (rough heuristic)
scoreboard players set @s neo_state 0

# For every player who has our origin tag, run per-player tick handler
execute as @a[tag=neoorigins_automoton] run function neoorigins_automoton:player/tick_player

