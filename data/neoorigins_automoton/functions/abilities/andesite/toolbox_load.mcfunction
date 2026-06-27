# Load the player's toolbox (prototype): restores any stored Inventory snapshot back into the player's inventory.
# WARNING: This may overwrite inventory slots. Use with caution in testing.

# If there is no stored data, inform player
execute if storage neoorigins_automoton:toolboxes Players run tellraw @s {"rawtext":[{"text":"Toolbox: restoring stored snapshot (prototype)."}]}
# Replace player's Inventory with the most recent stored snapshot (prototype behaviour)
# Warning: This is a naive approach and may clash with other inventory contents.
# We get the last entry from storage Players and set it as the player's Inventory
execute if storage neoorigins_automoton:toolboxes Players run data modify entity @s Inventory set from storage neoorigins_automoton:toolboxes Players
tellraw @s {"rawtext":[{"text":"Toolbox: restore attempted. Please check your inventory."}]}
