# Brass speed controller hold: increase speed at cost 3 stress/tick
attribute @s minecraft:generic.movement_speed base set 0.15
# The exact base set may need adjustment; we use a multiplier approximation
scoreboard players add @s neo_stress 3
# Allow jumping: give jump boost slightly
effect give @s minecraft:jump_boost 2 1 true
