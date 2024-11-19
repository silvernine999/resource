particle enchant ~ ~ ~ 0 0 0 .05 5
particle dust{color:[0.5, 0.5, 1.0],scale:0.5} ~ ~ ~ 0 0 0 0 3

tp @s ^ ^ ^.5
execute unless block ~ ~ ~ air run scoreboard players set @s projectiletick 0
execute positioned ~-.5 ~-.5 ~-.5 if entity @e[type=#weapons:mob,dx=0,dy=0,dz=0] run function weapons:magic/woodenwand/projectile/damage with entity @s data

execute if score @s projectiletick matches ..0 run kill @s