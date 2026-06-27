# Encased Fan: boost into air while holding primary. Apply upward motion and slow falling effect.
# Use simple velocity: /execute to summon small levitation then slow falling
effect give @s minecraft:slow_falling 2 0 true
# Apply motion via teleport relative
execute as @s at @s run tp @s ~ ~0.5 ~
# Stress cost per tick: 3
scoreboard players add @s neo_stress 3
