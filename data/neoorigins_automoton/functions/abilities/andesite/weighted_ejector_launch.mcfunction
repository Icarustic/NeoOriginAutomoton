# Weighted ejector launch
# Apply strong motion in look direction
execute as @s at @s run summon minecraft:area_effect_cloud ~ ~ ~ {Duration:1,RADIUS:0}
# Use motion with tp relative - launch forward & up
execute as @s at @s run tp @s ^ ^ ^6
# Stress/cooldown handling
scoreboard players add @s neo_stress 150
scoreboard players set @s neo_cooldown 300
# Make player immune to fall damage for a short time
tag @s add neoorigins_no_fall
schedule function neoorigins_automoton:abilities/clear_no_fall 100t
