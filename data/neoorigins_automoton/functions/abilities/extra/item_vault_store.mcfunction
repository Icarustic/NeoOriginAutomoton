# Vault store: save player's full Inventory into storage under their UUID key (vault). This is larger capacity than toolbox.
# Also tag the player as having a vault so slowness can be applied by tick logic.

data modify storage neoorigins_automoton:vault Players set value {}
data modify storage neoorigins_automoton:vault Players append from entity @s Inventory
tag @s add neoorigins_has_vault
tellraw @s {"rawtext":[{"text":"Item Vault: your inventory has been stored in the vault. You now carry the vault penalty (slowness)."}]}
