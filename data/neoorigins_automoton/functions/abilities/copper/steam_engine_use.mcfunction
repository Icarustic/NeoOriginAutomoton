# Steam engine use: manual de-stress 300 stress, 50s cooldown
scoreboard players remove @s neo_stress 300
scoreboard players set @s neo_cooldown 3000
# Notify
tellraw @s {"rawtext":[{"text":"Steam Engine: manually de-stressed."}]}
