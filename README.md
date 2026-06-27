# README update: explain what was implemented and what needs manual tuning

This datapack now includes a full-origin JSON (data/neoorigins_automoton/origins/automaton_full.json) and a series of power placeholders that map to datapack functions.

What I implemented for you:
- Origins-style JSON files listing a long set of powers (these powers are implemented as placeholders that call datapack functions).
- Datapack-driven stress system with scoreboard neo_stress and a bossbar.
- Selection advancements & functions so players can interact with blocks to choose their primary/secondary/tertiary/extra options. Selection functions both set datapack scoreboards and attempt to call the Origins command (`origins set @s neoorigins_automoton:automaton_full`) if that command exists on your server. This provides compatibility in both cases.
- Implemented a large set of mcfunctions that implement the runtime behaviour for many abilities (hand crank, wrench, press, encased fan, mechanical drill, weighted ejector, steam engine destress, valve toggle, fluid tank placeholder, diving helmet breathing, brass speed controller, mechanical crafter, potato cannon projectile, blaze burner instant-smelt placeholder, and extras like cardboard box and clutch).

Notes & next steps you will likely need to do:
- NeoOrigins/Origins power schemas vary between forks/versions. The power JSONs I created use common Origins-style power keys, but you may have to tweak them to exactly match NeoOrigins' expected keys. The datapack functions are already present and will work independently — you can also use them directly by creating Origins powers that run the corresponding functions if your NeoOrigins has a different key.
- Fine-tuning: knockback magnitudes, stress rates, and cooldown values will need playtesting. I've left clear numbers in the functions.
- Some behaviours (toolbox persistent inventory, fluid tank storage, full block-break detection for drill stress cost, clutch damage hook) require hooking into events that are harder to implement purely in datapacks and may need server-side mods or an additional function that listens for specific signals. I left placeholders where appropriate.

If you'd like, I can now:
1) Iterate and map every named ability to a specific Create block ID (I used common guesses and the ones you confirmed). Provide corrections if any block IDs differ.
2) Convert any Origins power JSONs to alternate keys if your NeoOrigins uses a different schema — share the exact power type names if you have them.
3) Test and tune the stress numbers and cooldowns in a live instance (I can provide a small test world or you can run on your server and paste console errors if any power keys don't match).

