# Load-time setup for the datapack
# This runs once when the datapack is loaded. It revokes the select advancements for all players so they can be re-triggered.

# Revoke example select advancements for all players so they can trigger again
advancement revoke @a only neoorigins_automoton:select/andesite_hand_crank
advancement revoke @a only neoorigins_automoton:select/copper_steam_engine
advancement revoke @a only neoorigins_automoton:select/brass_speed_controller
advancement revoke @a only neoorigins_automoton:select/cardboard_box

# You can add more revokes here when you add more select advancements
