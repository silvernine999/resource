data modify storage weapons:temp skill set from entity @s data

execute rotated ~2 ~-.5 run function weapons:melee/greatkatana/projectile/doubleslash/particle
execute rotated ~4 ~-1 run function weapons:melee/greatkatana/projectile/doubleslash/particle
execute rotated ~6 ~-1.5 run function weapons:melee/greatkatana/projectile/doubleslash/particle
execute rotated ~8 ~-2 run function weapons:melee/greatkatana/projectile/doubleslash/particle
execute rotated ~10 ~-2.5 run function weapons:melee/greatkatana/projectile/doubleslash/particle
execute rotated ~12 ~-3 run function weapons:melee/greatkatana/projectile/doubleslash/particle

data remove storage weapons:temp skill
rotate @s ~12 ~-3