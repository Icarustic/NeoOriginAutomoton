# Select frogport as secondary
scoreboard players set @s neo_secondary 2
# Tag player and set origin if possible
tag @s add neoorigins_automoton
execute if entity @s run origins set @s neoorigins_automoton:automaton_full
tellraw @s {"rawtext":[{"text":"Automaton: Copper secondary set to Frogport (Grapple)."}]}
