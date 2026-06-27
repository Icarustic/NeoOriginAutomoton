# Placeholder function run when player interacts with the configured Brass casing block.
# Replace the example command below with the NeoOrigins command to set a player's origin/powers.
# Example: origins set @s neoorigins_automoton:brass_rotational_speed_controller

tellraw @s {"rawtext":[{"text":"[NeoAutomaton] You interacted with Brass Casing block. Replace the placeholder command in this function with the origin-setting command."}]}

# origins set @s neoorigins_automoton:brass_rotational_speed_controller
advancement revoke @s only neoorigins_automoton:select/brass_speed_controller
