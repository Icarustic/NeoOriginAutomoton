# Vault restore: restore the player's latest stored Inventory snapshot from the vault.
# Remove the vault slowness tag on restoration
execute if storage neoorigins_automoton:vault Players run data modify entity @s Inventory set from storage neoorigins_automoton:vault Players
tag @s remove neoorigins_has_vault
tellraw @s {"rawtext":[{"text":"Item Vault: restored your stored inventory. Vault penalty removed."}]}
