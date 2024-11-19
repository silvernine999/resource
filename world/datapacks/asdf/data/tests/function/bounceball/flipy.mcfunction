execute positioned 0 0 0 run summon marker ^ ^ ^10 {Tags:["temp_flip"]}

#tellraw @a {"nbt": "Pos", "entity": "@n[tag=temp_flip]"}
execute as @n[tag=temp_flip] store result entity @s Pos[0] double 0.001 run data get entity @s Pos[0] -1000
execute as @n[tag=temp_flip] store result entity @s Pos[1] double 0.001 run data get entity @s Pos[1] 1000
execute as @n[tag=temp_flip] store result entity @s Pos[2] double 0.001 run data get entity @s Pos[2] -1000
rotate @n[tag=temp_flip] facing 0 0 0
#tellraw @a {"nbt": "Pos", "entity": "@n[tag=temp_flip]"}

execute store result entity @s Rotation[0] float 1 run data get entity @n[tag=temp_flip] Rotation[0]
execute store result entity @s Rotation[1] float 1 run data get entity @n[tag=temp_flip] Rotation[1]
kill @e[tag=temp_flip]