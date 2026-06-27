# When player interacts with Andesite Casing, run this function to open a small UI or cycle primary abilities.
# For simplicity, we set neo_primary to 0 (Andesite Casing "do nothing") and tag player as our origin.
scoreboard players set @s neo_primary 0
tag @s add neoorigins_automoton
# Try to set origin via Origins if available (best-effort)
execute if entity @s run origins set @s neoorigins_automoton:automaton_full
# Inform
tellraw @s {"rawtext":[{"text":"Automaton: Andesite Age selected (default casing). Primary set to Andesite Casing."}]}
