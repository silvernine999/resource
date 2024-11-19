data modify storage weapons:temp skill set from entity @s data

execute if score @s projectiletick matches 5.. run function weapons:melee/greatkatana/projectile/spinslash/up
execute if score @s projectiletick matches 2..4 run function weapons:melee/greatkatana/projectile/spinslash/down
execute if score @s projectiletick matches ..1 run function weapons:melee/greatkatana/projectile/spinslash/up

data remove storage weapons:temp skill
execute if score @s projectiletick matches ..0 run kill @s