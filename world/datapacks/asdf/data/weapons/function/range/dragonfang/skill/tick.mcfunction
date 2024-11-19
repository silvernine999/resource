summon minecraft:marker ~ ~ ~ {Tags:["projectile", "temp_loader_projectile"], data:{function: "range/dragonfang/projectile/position/tick"}}
execute anchored eyes run tp @n[tag=temp_loader_projectile] ^ ^ ^1 ~ ~
data modify entity @n[tag=temp_loader_projectile] data.owner set from entity @s UUID
execute store result entity @n[tag=temp_loader_projectile] data.damage float 0.0001 run function weapons:range/get_range_damage
scoreboard players set @n[tag=temp_loader_projectile] projectiletick 20
tag @e[tag=temp_loader_projectile] remove temp_loader_projectile
playsound entity.blaze.shoot player @s ^ ^ ^3 1 .5
tag @s remove dragonfang