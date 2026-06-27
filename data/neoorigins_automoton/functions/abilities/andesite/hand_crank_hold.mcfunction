# Hand crank hold behaviour (run repeatedly by Origins keybind or manually)
# While this function is executed as the player, reduce stress by 8 per 0.5s -> about 8 every 10 ticks

# Reduce stress
scoreboard players remove @s neo_stress 8

# Cooldown protection: ensure stress doesn't go below 0
execute if score @s neo_stress matches ..-1 run scoreboard players set @s neo_stress 0

# Friendly help: allow other players to interact to crank (implemented in select function)
