execute if score @s projectiletick matches 26.. run function weapons:melee/greatkatana/projectile/doubleslash/first
execute if score @s projectiletick matches 26 run rotate @s ~15 7.5
execute if score @s projectiletick matches 21..25 run function weapons:melee/greatkatana/projectile/doubleslash/second

execute if score @s projectiletick matches ..0 run kill @s