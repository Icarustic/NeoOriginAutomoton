# Placeholder function run when player interacts with the configured Andesite block.
# Replace the example command below with the NeoOrigins command to set a player's origin/powers.
# Example Origins-style command (replace with the correct NeoOrigins syntax if different):
#   origins set @s neoorigins_automoton:andesite_hand_crank

# Notify the player (helpful while configuring)
tellraw @s {"rawtext":[{"text":"[NeoAutomaton] You interacted with Andesite Hand Crank block. Replace the placeholder command in this function with the origin-setting command."}]}

# TODO: Replace the next line with the actual command that changes the player's origin/powers
# Example (uncomment and edit):
# origins set @s neoorigins_automoton:andesite_hand_crank

# Revoke the advancement for the player so they can use it again later
advancement revoke @s only neoorigins_automoton:select/andesite_hand_crank
