summon minecraft:marker ~ ~ ~ {Tags:["projectile", "temp_loader_projectile", "scatter_small"]}

data modify storage test:temp Rotation set value [0.0f, 0.0f]
execute store result storage test:temp Rotation[0] float 1 run random value -180..179
execute store result storage test:temp Rotation[1] float 1 run random value -90..90
data modify entity @n[tag=temp_loader_projectile] Rotation set from storage test:temp Rotation

data modify entity @n[tag=temp_loader_projectile] data.owner set from entity @s data.owner
scoreboard players set @n[tag=temp_loader_projectile] projectiletick 10

tag @e[tag=temp_loader_projectile] remove temp_loader_projectile

playsound entity.pig.ambient player @s ^ ^ ^3 2 1