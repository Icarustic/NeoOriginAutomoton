# Select Steam Engine (sets secondary ability to Steam Engine)
scoreboard players set @s neo_secondary 1
tag @s add neoorigins_automoton
execute if entity @s run origins set @s neoorigins_automoton:automaton_full
tellraw @s {"rawtext":[{"text":"Automaton: Copper Age secondary set to Steam Engine."}]}
