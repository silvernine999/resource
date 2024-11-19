summon minecraft:marker ~ ~ ~ {Tags:["projectile", "temp_loader_projectile"], data:{function: "range/sniper/projectile/tick"}}

data modify entity @n[tag=temp_loader_projectile] data.owner set from entity @s UUID
execute store result entity @n[tag=temp_loader_projectile] data.damage float 0.0001 run function weapons:range/get_range_damage
execute anchored eyes run tp @n[tag=temp_loader_projectile] ^ ^ ^ ~ ~
scoreboard players set @n[tag=temp_loader_projectile] projectiletick 3

tag @e[tag=temp_loader_projectile] remove temp_loader_projectile

attribute @s minecraft:movement_speed modifier add sniper -0.5 add_multiplied_total
attribute @s minecraft:jump_strength modifier add sniper -1 add_multiplied_total

execute anchored eyes run particle smoke ^ ^ ^ .1 .1 .1 0 10
playsound entity.firework_rocket.blast player @s ^ ^ ^3 1 .5
execute rotated ~ 0 if blocks ^ ^ ^-1 ^ ^1 ^-1 0 300 0 masked run tp @s ^ ^ ^-1