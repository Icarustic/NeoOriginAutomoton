# Toolbox open: informs the player how to save/load the toolbox.
# This implementation uses manual save/load functions to avoid accidental inventory overwrites.

tellraw @s {"rawtext":[{"text":"Toolbox: Use /function neoorigins_automoton:abilities/andesite/toolbox_save to save first 9 inventory slots to your toolbox. Use /function neoorigins_automoton:abilities/andesite/toolbox_load to restore them."}]}
