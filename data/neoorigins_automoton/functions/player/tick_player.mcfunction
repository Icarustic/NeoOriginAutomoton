# Per-player tick handler. This is run as the player when possible.
# Manages stress natural loss, overstress effects, auto-repair detection, and per-ability upkeep.

# If player doesn't have neo_stress value, initialize
scoreboard players set @s neo_stress 0

# Overstressed check: if stress >= 1000 -> apply penalty
execute if score @s neo_stress matches 1000.. run tag @s add neoorigins_overstressed
execute unless score @s neo_stress matches 1000.. run tag @s remove neoorigins_overstressed

# If overstressed, slow player and prevent abilities (we use slowness effect as example)
execute if entity @s[tag=neoorigins_overstressed] run effect give @s minecraft:slowness 2 1 true

# Natural de-stress per tick (not from abilities). If Valve open (neo_state 1), de-stress 2x
execute if score @s neo_state matches 1 run scoreboard players remove @s neo_stress 2
execute unless score @s neo_state matches 1 run scoreboard players remove @s neo_stress 1

# Update bossbar for this player
bossbar set neoorigins:stress value 0
bossbar set neoorigins:stress players @a[tag=neoorigins_automoton]

# Update actionbar UI if player has stressometer or speedometer (we use tellraw for now)
execute if entity @s[nbt={Tags:["neoorigins_has_stressometer"]}] run title @s actionbar {"rawtext":[{"text":"Stress: "},{"score":{"name":"@s","objective":"neo_stress"}}]}

# Return
