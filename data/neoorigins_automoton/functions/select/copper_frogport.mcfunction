# Frogport selection (copper grapple)
scoreboard players set @s neo_secondary 2
tag @s add neoorigins_automoton
origin set @s neoorigins_automoton:automaton_layer neoorigins_automoton:automaton_full

tellraw @s [{"text":"Automaton: Copper secondary set to Frogport (Grapple)."}]
