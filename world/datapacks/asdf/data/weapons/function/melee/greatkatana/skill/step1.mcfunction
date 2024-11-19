attribute @s minecraft:movement_speed modifier add greatkatana -.5 add_multiplied_total
attribute @s minecraft:jump_strength modifier add greatkatana -1 add_multiplied_total
attribute @s minecraft:attack_speed modifier add greatkatana -1 add_multiplied_total
attribute @s minecraft:entity_interaction_range modifier add greatkatana -1 add_multiplied_total
attribute @s minecraft:knockback_resistance modifier add greatkatana 1 add_value

attribute @s minecraft:max_absorption modifier add greatkatana 10 add_value
effect give @s absorption 1 255 true
effect clear @s absorption
scoreboard players set @s damagecheck_absorb 0
scoreboard players set @s wskillstat 0

summon minecraft:marker ~ ~ ~ {Tags:["projectile", "temp_loader_projectile"], data:{function: "melee/greatkatana/projectile/doubleslash/tick"}}

data modify entity @n[tag=temp_loader_projectile] data.owner set from entity @s UUID
execute store result entity @n[tag=temp_loader_projectile] data.damage float 0.8 run attribute @s attack_damage get
execute rotated ~ 0 anchored eyes run tp @n[tag=temp_loader_projectile] ^ ^-.5 ^-5 ~-30 7.5
scoreboard players set @n[tag=temp_loader_projectile] projectiletick 30
tag @e[tag=temp_loader_projectile] remove temp_loader_projectile