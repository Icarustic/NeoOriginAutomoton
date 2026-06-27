# Select cardboard box extra doodad
scoreboard players set @s neo_extra 1
tag @s add neoorigins_automoton
execute if entity @s run origins set @s neoorigins_automoton:automaton_full
tellraw @s {"rawtext":[{"text":"Automaton: Extra doodad set to Cardboard Box."}]}
