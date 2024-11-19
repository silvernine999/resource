summon minecraft:marker ~ ~ ~ {Tags:["projectile", "temp_loader_projectile", "cut_spiral"]}

execute store result entity @n[tag=temp_loader_projectile] Rotation[0] float 1 run random value -180..179
execute store result entity @n[tag=temp_loader_projectile] data.ry float .1 run random value -15..15
#execute store result entity @n[tag=temp_loader_projectile] Rotation[1] float 1 run random value -90..90
scoreboard players set @n[tag=temp_loader_projectile] projectiletick 3

tag @e[tag=temp_loader_projectile] remove temp_loader_projectile