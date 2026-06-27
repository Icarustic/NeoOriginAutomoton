# Mechanical press charge handler placeholder
# We store charge in the player's NBT (or scoreboard). Charge while holding primary -> add 3 charge/tick
scoreboard players add @s neo_cooldown 3
# When released (handled by Origins power), the release function should read neo_cooldown and apply knockback based on brackets
