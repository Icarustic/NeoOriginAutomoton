# Base passives power mcfunction (applied as a 'power' via origin definitions)
# This file will be called by the Automaton origin to grant base effects

# Give increased max health (use attribute modifier via give effect hack: health boost)
# Note: NeoOrigins typically uses powers that set attributes, but in a datapack we emulate via effects
# Health boost equivalent: use health_boost effect with amplifier 4 (gives +10 hearts per amp? Implementation varies)

effect give @s minecraft:health_boost 1000000 4 true

effect give @s minecraft:armor 1000000 1 true

# Heavy Machinery: Cannot jump -- give jump boost -128? (There is no negative jump potion) -> use Levitation negation as workaround
# Instead, we clear jump by forcibly setting motion on jump detection. We'll implement the no-jump behaviour in the tick handler.

# Auto Repair and Machine-like flags via tags
tag @s add neoorigins_automoton

tag @s add neoorigins_auto_repair_available

# Food alias tag for fuel eating: allow eating coal/logs handled in separate functions

# Toolbox & Vault initialization (create persistent storage using dummy scoreboard markers)
scoreboard players set @s neo_toolbox_slots 9
scoreboard players set @s neo_vault_slots 27

# Inform player
tellraw @s [{"text":"[Automaton] Base passives applied."}]
