# Potato cannon fire
# Launch a potato projectile (snowball renamed) with motion
summon minecraft:snowball ~ ~1.5 ~ {Tags:["neo_potato_projectile"],Item:{id:"minecraft:potato",Count:1b}}
scoreboard players add @s neo_stress 50
# Set cooldown
scoreboard players set @s neo_cooldown 15
