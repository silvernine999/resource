summon minecraft:marker ~ ~ ~ {Tags:["projectile", "temp_loader_projectile"], data:{function: "magic/woodenwand/projectile/tick"}}
execute anchored eyes run tp @n[tag=temp_loader_projectile] ^ ^ ^1 ~ ~
data modify entity @n[tag=temp_loader_projectile] data.owner set from entity @s UUID
execute store result entity @n[tag=temp_loader_projectile] data.damage float 0.0001 run function weapons:magic/get_magic_damage
scoreboard players set @n[tag=temp_loader_projectile] projectiletick 20
tag @e[tag=temp_loader_projectile] remove temp_loader_projectile
playsound minecraft:block.enchantment_table.use player @s ^ ^ ^3 1 2
tag @s remove woodenwand