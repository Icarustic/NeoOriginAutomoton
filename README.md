# NeoOrigin Automaton (datapack skeleton)

This repository contains a starter datapack skeleton for an "Automaton" origin for NeoOrigins on Neoforge 1.21.1. It provides:

- A datapack layout (pack.mcmeta, namespace data folder)
- Example hidden advancements that run functions when a player interacts with a block (used to select/swap states)
- Example mcfunctions that are triggered by those advancements and contain clear placeholders for the actual NeoOrigins command to change a player's origin
- Function tags to hook load/tick functions

Why this skeleton?

- NeoOrigins / Origins-style mods vary in their command syntax and the exact JSON format for powers/origins across versions and forks. To avoid shipping broken JSON, this datapack provides a robust flow you can finish quickly:
  1. Update the advancement block IDs to match the Create block IDs you want players to interact with (or other block IDs).
  2. Replace the placeholder origin-change command in each select function with the correct NeoOrigins command for your server/modversion (example provided).
  3. Add full power JSONs under data/<your_namespace>/powers/ and a complete origin file under data/origins/ that references them.

Installation (in Minecraft):
1. Build the datapack zip (or use the datapack folder directly). The root of the datapack is this repository's root.
2. Put the datapack folder or zip into the world's `datapacks/` directory.
3. Run `/reload` on the server.

Configuration & next steps

- Edit the advancement JSONs in `data/neoorigins_automoton/advancements/select/` to set the exact `block` condition to the Create block IDs you want players to click. Currently they are placeholders (see files).
- Edit the mcfunctions in `data/neoorigins_automoton/functions/select/` and **replace the placeholder origin command** with the NeoOrigins (or Origins) command that sets a player's origin.
  - Common example for Origins-like mods: `origins set @s neoorigins_automoton:andesite_hand_crank` or `/origin set @s <namespace>:<origin>` — check your mod's command.
- Add the power JSON files you specified (stress system, abilities, immunities, etc.) under `data/neoorigins_automoton/powers/` and create the origin JSON under `data/origins/` referencing them.

If you'd like, I can:
- Convert the ability descriptions in your message into individual power JSON files and a complete origin JSON, but I will need to confirm the exact NeoOrigins power keys and the mod's expected JSON schema (or allow me to inspect your server/mod instance to verify command names and IDs).
- Add all block->ability select entries automatically if you provide the exact Create block IDs you want mapped.

License: none specified.
