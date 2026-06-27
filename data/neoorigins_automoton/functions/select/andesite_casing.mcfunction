# Update selection functions to use the NeoOrigins command to set the player's origin using our origin_layer

# Andesite casing selection
scoreboard players set @s neo_primary 0
tag @s add neoorigins_automoton
# Set origin using NeoOrigins command: /origin set <target> <layer> <origin>
origin set @s neoorigins_automoton:automaton_layer neoorigins_automoton:automaton_full

# Inform
tellraw @s [{"text":"Automaton: Andesite Age selected (default casing). Primary set to Andesite Casing."}]
