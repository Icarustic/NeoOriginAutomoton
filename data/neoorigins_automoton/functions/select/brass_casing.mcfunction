# Select Brass Casing default
scoreboard players set @s neo_tertiary 0
tag @s add neoorigins_automoton
execute if entity @s run origins set @s neoorigins_automoton:automaton_full
tellraw @s {"rawtext":[{"text":"Automaton: Brass Age tertiary set to Brass Casing (default)."}]}
