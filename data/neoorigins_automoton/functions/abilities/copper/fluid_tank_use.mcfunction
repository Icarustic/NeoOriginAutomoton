# Fluid tank use/interaction
# If player holds a bucket, store it in player's storage (uses storage command). Very simple: when used while holding a bucket, increment stored counter and remove bucket.
execute if entity @s[nbt={SelectedItem:{id:"minecraft:water_bucket"}}] run scoreboard players add @s neo_state 1
execute if entity @s[nbt={SelectedItem:{id:"minecraft:water_bucket"}}] run clear @s minecraft:water_bucket 1

# TODO: Implement proper tank storage using storage and custom tags
