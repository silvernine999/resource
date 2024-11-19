playsound minecraft:entity.ender_dragon.growl player @s ^ ^ ^8 2 2
execute rotated ~ 0 if blocks ^ ^ ^1 ^ ^1 ^1 0 300 0 masked run tp @s ^ ^ ^1
execute rotated ~ 0 if blocks ^ ^ ^1 ^ ^1 ^2 0 300 0 masked run tp @s ^ ^ ^2
execute rotated ~ 0 if blocks ^ ^ ^1 ^ ^1 ^3 0 300 0 masked run tp @s ^ ^ ^3
execute rotated ~ 0 if blocks ^ ^ ^1 ^ ^1 ^4 0 300 0 masked run tp @s ^ ^ ^4
execute rotated ~ 0 if blocks ^ ^ ^1 ^ ^1 ^5 0 300 0 masked run tp @s ^ ^ ^5

summon minecraft:marker ~ ~ ~ {Tags:["projectile", "temp_loader_projectile"], data:{function: "melee/greatkatana/projectile/spinslash/tick"}}

data modify entity @n[tag=temp_loader_projectile] data.owner set from entity @s UUID
execute store result entity @n[tag=temp_loader_projectile] data.damage float 2.5 run attribute @s attack_damage get
execute rotated ~ 0 anchored eyes run tp @n[tag=temp_loader_projectile] ^ ^-.5 ^5 ~60 0
scoreboard players set @n[tag=temp_loader_projectile] projectiletick 6
tag @e[tag=temp_loader_projectile] remove temp_loader_projectile