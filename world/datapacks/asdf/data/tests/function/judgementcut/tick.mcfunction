#particle flash
execute if score @s projectiletick matches 11.. run playsound block.glass.break player @a ~ ~ ~ 2 1

execute if score @s projectiletick matches 11.. store result entity @s Rotation[0] float 1 run random value -180..179
execute if score @s projectiletick matches 11.. store result entity @s Rotation[1] float 1 run random value -90..90
execute if score @s projectiletick matches 11.. positioned ^ ^ ^1 run function tests:judgementcut/spawn_cut_linear
execute if score @s projectiletick matches 11.. positioned ^ ^ ^-1 run function tests:judgementcut/spawn_cut_linear
execute if score @s projectiletick matches 11.. store result entity @s Rotation[0] float 1 run random value -180..179
execute if score @s projectiletick matches 11.. store result entity @s Rotation[1] float 1 run random value -90..90
execute if score @s projectiletick matches 11.. positioned ^ ^ ^2 run function tests:judgementcut/spawn_cut_linear
execute if score @s projectiletick matches 11.. positioned ^ ^ ^-2 run function tests:judgementcut/spawn_cut_linear

execute if score @s projectiletick matches ..0 run kill @s