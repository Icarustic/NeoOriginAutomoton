# Placeholder function run when player interacts with the configured Cardboard Box block.
# Replace the example command below with the NeoOrigins command to set a player's origin/powers.
# Example: origins set @s neoorigins_automoton:extra_cardboard_box

tellraw @s {"rawtext":[{"text":"[NeoAutomaton] You interacted with Cardboard Box block. Replace the placeholder command in this function with the origin-setting command."}]}

# origins set @s neoorigins_automoton:extra_cardboard_box
advancement revoke @s only neoorigins_automoton:select/cardboard_box
