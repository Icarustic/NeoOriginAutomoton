# Update load to initialize scoreboards, bossbar, and sample mappings

# Create objectives
scoreboard objectives add neo_stress dummy "Stress"
scoreboard objectives add neo_cooldown dummy "NeoCooldown"
scoreboard objectives add neo_primary dummy "NeoPrimary"
scoreboard objectives add neo_secondary dummy "NeoSecondary"
scoreboard objectives add neo_tertiary dummy "NeoTertiary"
scoreboard objectives add neo_extra dummy "NeoExtra"
scoreboard objectives add neo_state dummy "NeoState"

# Create bossbar for stress
bossbar add neoorigins:stress "Stress"
bossbar set neoorigins:stress color red
bossbar set neoorigins:stress max 1000
bossbar set neoorigins:stress players @a

# Ensure select advancements can trigger again
advancement revoke @a only neoorigins_automoton:select/andesite_hand_crank
advancement revoke @a only neoorigins_automoton:select/copper_steam_engine
advancement revoke @a only neoorigins_automoton:select/brass_speed_controller
advancement revoke @a only neoorigins_automoton:select/cardboard_box

# Tag all players with origin tag if they already are assigned via the origins command (best-effort)
execute as @a if entity @s[nbt={Tags:["neoorigins_automoton_origin"]}] run tag @s add neoorigins_automoton

