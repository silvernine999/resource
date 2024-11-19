summon minecraft:marker ~ ~ ~ {Tags:["projectile", "temp_loader_projectile", "scatter_big"]}

data modify entity @n[tag=temp_loader_projectile] data.owner set from entity @s UUID
execute anchored eyes run tp @n[tag=temp_loader_projectile] ^ ^ ^1 ~ ~
scoreboard players set @n[tag=temp_loader_projectile] projectiletick 20

tag @e[tag=temp_loader_projectile] remove temp_loader_projectile

playsound entity.pig.ambient player @s ^ ^ ^3 2 1