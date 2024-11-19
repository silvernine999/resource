execute if score @s projectiletick matches 31.. run particle witch ~ ~ ~ 0 0 0 1 1
execute if score @s projectiletick matches ..30 run particle witch ~ ~ ~ 0 0 0 0 1

execute if score @s projectiletick matches 31.. run function weapons:magic/magicswords/projectile/hovering with entity @s data
execute if score @s projectiletick matches ..60 run rotate @s facing entity @n[type=#weapons:mob,distance=..16] eyes
execute if score @s projectiletick matches ..30 if entity @n[type=#weapons:mob,distance=..16] run tp @s ^ ^ ^1.5
execute if score @s projectiletick matches ..30 unless entity @n[type=#weapons:mob,distance=..16] run tp @s ^ ^ ^1

execute positioned ~-.5 ~-.5 ~-.5 if entity @e[type=#weapons:mob,dx=0,dy=0,dz=0] run function weapons:magic/magicswords/projectile/damage with entity @s data

function weapons:magic/magicswords/projectile/display with entity @s data

execute if score @s projectiletick matches ..0 run function weapons:magic/magicswords/projectile/kill with entity @s data