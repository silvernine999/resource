execute anchored eyes run summon minecraft:marker ^ ^ ^5 {Tags:["projectile", "temp_loader_projectile", "judgementcut"]}

data modify entity @n[tag=temp_loader_projectile] data.owner set from entity @s UUID
scoreboard players set @n[tag=temp_loader_projectile] projectiletick 15

tag @e[tag=temp_loader_projectile] remove temp_loader_projectile

playsound entity.pig.ambient player @s ^ ^ ^3 2 1