execute store result storage weapons:temp arrow.damage float 0.0001 run scoreboard players get @s arrow_damage
data modify storage weapons:temp arrow.owner set from entity @s Owner
execute as @n[tag=customarrowvictim] run function weapons:range/arrow_hit_damage with storage weapons:temp arrow
data remove storage weapons:temp arrow

execute at @s run function weapons:range/arrow_event_hit with entity @s weapon.components."minecraft:custom_data"

tag @e remove customarrowvictim