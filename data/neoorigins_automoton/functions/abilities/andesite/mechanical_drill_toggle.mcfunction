# Mechanical drill toggle: when active, player can break blocks harder than normal (handled via tool enhancement). We give Haste effect and mining speed bonus.
effect give @s minecraft:haste 2 1 true
# Stress per block broken must be handled by on_block_break detection (not implemented here) but we add a small per-tick cost
scoreboard players add @s neo_stress 1
