# Mechanical crafter open
# Open the crafting table GUI
execute as @s run open crafting_table
# Deduct stress
scoreboard players add @s neo_stress 30
