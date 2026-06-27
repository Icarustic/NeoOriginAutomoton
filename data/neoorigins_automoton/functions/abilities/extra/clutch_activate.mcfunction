# Clutch: on lethal damage store a 'clutch_used' tag and heal to 4 HP (2 hearts). This must be invoked by damage/detection logic (not implemented here)
tag @s add neoorigins_clutch_used
heal @s 4
# Clear effects
effect clear @s
# Set stress and hunger cost if overstressed
scoreboard players set @s neo_stress 400
food set @s 20
