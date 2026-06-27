# Wrench hold: manual repair over time while holding primary. This replaces Auto Repair passive.
# Windup 0.55s -> emulate 11 ticks before heal begins
# Heal 1.5 HP / 0.5s -> apply 3 HP every 10 ticks

# If player is under an AutoRepair-disabled tag, skip

# Start healing: add 1.5 HP (0.75 hearts) per half-second approximation -> we heal 1 hp per tick group
# We'll use simple increment using heal command
heal @s 1.5
# Add stress cost: 50 constant + 30 per 0.5s (approx 30 per 10 ticks)
scoreboard players add @s neo_stress 30
