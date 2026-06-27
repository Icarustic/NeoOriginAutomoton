# Valve toggle: toggle neo_state (1=valve open)
execute if score @s neo_state matches 1 run scoreboard players set @s neo_state 0
execute unless score @s neo_state matches 1 run scoreboard players set @s neo_state 1

# Apply speed penalty if open (handled in player tick by checking neo_state)
