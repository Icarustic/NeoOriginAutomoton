# Save the player's first 9 non-hotbar inventory slots (slots 9-17) to storage under their UUID.
# WARNING: This is a best-effort implementation and may not preserve complex item NBT perfectly. It only stores the full Inventory as a quick prototype.

# Copy full Inventory to storage path neoorigins_automoton:toolboxes.<uuid>
data modify storage neoorigins_automoton:toolboxes Players set value {}
execute store result storage neoorigins_automoton:toolboxes Players.uuid string 1 run data get entity @s UUID
# Simpler: store the player's Inventory list under their UUID key
data modify storage neoorigins_automoton:toolboxes Players append from entity @s Inventory
tellraw @s {"rawtext":[{"text":"Toolbox: inventory snapshot saved (prototype)."}]}
