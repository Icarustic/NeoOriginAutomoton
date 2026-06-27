# Cardboard box passive: crouch to become invisible; uncrouch to reveal
execute as @s if entity @s[scores={neo_stealth=1}] run effect give @s minecraft:invisibility 2 0 true
