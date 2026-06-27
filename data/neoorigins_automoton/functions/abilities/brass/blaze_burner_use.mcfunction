# Blaze burner use: instant-smelt item in main hand
# Check mainhand item and replace with smelted variant using furnace recipes (simple approach: try common cases)
# Example: raw_beef -> cooked_beef
execute if entity @s[nbt={SelectedItem:{id:"minecraft:raw_beef"}}] run replaceitem entity @s weapon.mainhand minecraft:cooked_beef 1
# Add stress per item (approx)
scoreboard players add @s neo_stress 4
# Cooldown
scoreboard players set @s neo_cooldown 1
