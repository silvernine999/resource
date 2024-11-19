particle flame

tp @s ^ ^ ^1

execute unless block ~ ~ ~ air run scoreboard players set @s projectiletick 0
execute positioned ~-.5 ~-.5 ~-.5 if entity @e[type=#weapons:mob,dx=0,dy=0,dz=0] run scoreboard players set @s projectiletick 0
execute if score @s projectiletick matches ..0 run function weapons:range/dragonfang/projectile/position/settle