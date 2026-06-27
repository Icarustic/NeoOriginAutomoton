# Placeholder function run when player interacts with the configured Steam Engine block.
# Replace the example command below with the NeoOrigins command to set a player's origin/powers.
# Example: origins set @s neoorigins_automoton:copper_steam_engine

tellraw @s {"rawtext":[{"text":"[NeoAutomaton] You interacted with Steam Engine block. Replace the placeholder command in this function with the origin-setting command."}]}

# origins set @s neoorigins_automoton:copper_steam_engine
advancement revoke @s only neoorigins_automoton:select/copper_steam_engine
