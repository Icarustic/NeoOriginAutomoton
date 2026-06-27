# Simple grapple: summon a small invisible marker at 10 blocks forward (clamped up to 50 if needed), teleport player near it and optionally pull mobs.

# Stress and cooldown
scoreboard players add @s neo_stress 70
scoreboard players set @s neo_cooldown 1000

# Summon a marker 10 blocks in the look direction (use relative execution)
execute at @s anchored eyes run summon armor_stand ^ ^ ^10 {Tags:["neo_grapple_point","neo_grapple_owner_${uuid}"],Invisible:1b,Marker:1b,NoGravity:1b}

# Pull player to the grapple point (slight offset back so player isn't inside block)
execute as @e[type=armor_stand,tag=neo_grapple_point,limit=1,sort=nearest] at @s run tp @p ^ ^ ^-1

# Give a short period of slowfall/ascent smoothing
effect give @p minecraft:slow_falling 40 0 true

# Try to pull a nearby mob into the player if one exists near the grapple point
execute as @e[type=armor_stand,tag=neo_grapple_point,limit=1,sort=nearest] at @s run execute if entity @e[type=!player,distance=..3,limit=1] run tp @e[type=!player,distance=..3,limit=1,sort=nearest] @p

# Schedule cleanup of the marker after 2 seconds (40 ticks)
schedule function neoorigins_automoton:abilities/copper/frogport_cleanup 40t

# Notify
tellraw @s {"rawtext":[{"text":"Frogport: grapple deployed."}]}
