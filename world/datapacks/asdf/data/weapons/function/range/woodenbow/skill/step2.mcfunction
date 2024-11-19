summon minecraft:marker ~ ~ ~ {Tags:["projectile", "temp_loader_projectile"], data:{function: "range/woodenbow/projectile/tick"}}

summon item_display ~ ~ ~ {Tags:["projectile_display", "temp_loader_display"], teleport_duration:1, transformation:{left_rotation:[0f,0.383f,0f,0.924f],right_rotation:[0.707f,0f,0f,0.707f],translation:[0f,0f,0f],scale:[1f,1f,1f]},item:{id:"minecraft:arrow",count:1}}
data modify entity @n[tag=temp_loader_projectile] data.owner set from entity @s UUID
data modify entity @n[tag=temp_loader_projectile] data.display set from entity @n[tag=temp_loader_display] UUID
execute store result entity @n[tag=temp_loader_projectile] data.damage float 0.0002 run function weapons:range/get_range_damage
execute anchored eyes run tp @n[tag=temp_loader_projectile] ^ ^-0.5 ^1 ~ ~
scoreboard players set @n[tag=temp_loader_projectile] projectiletick 8

tag @e[tag=temp_loader_projectile] remove temp_loader_projectile
tag @e[tag=temp_loader_display] remove temp_loader_display

playsound item.crossbow.shoot player @s ^ ^ ^3 1 1