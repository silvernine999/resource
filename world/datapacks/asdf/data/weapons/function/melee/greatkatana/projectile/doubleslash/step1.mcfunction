data modify storage weapons:temp skill set from entity @s data

execute rotated ~-2 ~-.5 run particle dust{color:[0.8,0.0,0.0],scale:0.5} ^ ^ ^7.8 0 0 0 0 3
execute rotated ~-2 ~-.5 run particle dust{color:[0.9,0.0,0.0],scale:0.5} ^ ^ ^7.6 0 0 0 0 3
execute rotated ~-2 ~-.5 run particle dust{color:[1.0,0.0,0.0],scale:0.5} ^ ^ ^8 0 0 0 0 3
execute rotated ~-2 ~-.5 positioned ^ ^ ^7.5 positioned ~-1 ~-1 ~-1 as @e[type=#weapons:mob,dx=1,dy=1,dz=1] run function weapons:melee/greatkatana/projectile/doubleslash/damage with storage weapons:temp skill
execute rotated ~-4 ~-1 run particle dust{color:[0.8,0.0,0.0],scale:0.5} ^ ^ ^7.8 0 0 0 0 3
execute rotated ~-4 ~-1 run particle dust{color:[0.9,0.0,0.0],scale:0.5} ^ ^ ^7.6 0 0 0 0 3
execute rotated ~-4 ~-1 run particle dust{color:[1.0,0.0,0.0],scale:0.5} ^ ^ ^8 0 0 0 0 3
execute rotated ~-4 ~-1 positioned ^ ^ ^7.5 positioned ~-1 ~-1 ~-1 as @e[type=#weapons:mob,dx=1,dy=1,dz=1] run function weapons:melee/greatkatana/projectile/doubleslash/damage with storage weapons:temp skill
execute rotated ~-6 ~-1.5 run particle dust{color:[0.8,0.0,0.0],scale:0.5} ^ ^ ^7.8 0 0 0 0 3
execute rotated ~-6 ~-1.5 run particle dust{color:[0.9,0.0,0.0],scale:0.5} ^ ^ ^7.6 0 0 0 0 3
execute rotated ~-6 ~-1.5 run particle dust{color:[1.0,0.0,0.0],scale:0.5} ^ ^ ^8 0 0 0 0 3
execute rotated ~-6 ~-1.5 positioned ^ ^ ^7.5 positioned ~-1 ~-1 ~-1 as @e[type=#weapons:mob,dx=1,dy=1,dz=1] run function weapons:melee/greatkatana/projectile/doubleslash/damage with storage weapons:temp skill
execute rotated ~-8 ~-2 run particle dust{color:[0.8,0.0,0.0],scale:0.5} ^ ^ ^7.8 0 0 0 0 3
execute rotated ~-8 ~-2 run particle dust{color:[0.9,0.0,0.0],scale:0.5} ^ ^ ^7.6 0 0 0 0 3
execute rotated ~-8 ~-2 run particle dust{color:[1.0,0.0,0.0],scale:0.5} ^ ^ ^8 0 0 0 0 3
execute rotated ~-8 ~-2 positioned ^ ^ ^7.5 positioned ~-1 ~-1 ~-1 as @e[type=#weapons:mob,dx=1,dy=1,dz=1] run function weapons:melee/greatkatana/projectile/doubleslash/damage with storage weapons:temp skill
execute rotated ~-10 ~-2.5 run particle dust{color:[0.8,0.0,0.0],scale:0.5} ^ ^ ^7.8 0 0 0 0 3
execute rotated ~-10 ~-2.5 run particle dust{color:[0.9,0.0,0.0],scale:0.5} ^ ^ ^7.6 0 0 0 0 3
execute rotated ~-10 ~-2.5 run particle dust{color:[1.0,0.0,0.0],scale:0.5} ^ ^ ^8 0 0 0 0 3
execute rotated ~-10 ~-2.5 positioned ^ ^ ^7.5 positioned ~-1 ~-1 ~-1 as @e[type=#weapons:mob,dx=1,dy=1,dz=1] run function weapons:melee/greatkatana/projectile/doubleslash/damage with storage weapons:temp skill
execute rotated ~-12 ~-3 run particle dust{color:[0.8,0.0,0.0],scale:0.5} ^ ^ ^7.8 0 0 0 0 3
execute rotated ~-12 ~-3 run particle dust{color:[0.9,0.0,0.0],scale:0.5} ^ ^ ^7.6 0 0 0 0 3
execute rotated ~-12 ~-3 run particle dust{color:[1.0,0.0,0.0],scale:0.5} ^ ^ ^8 0 0 0 0 3
execute rotated ~-12 ~-2.5 positioned ^ ^ ^7.5 positioned ~-1 ~-1 ~-1 as @e[type=#weapons:mob,dx=1,dy=1,dz=1] run function weapons:melee/greatkatana/projectile/doubleslash/damage with storage weapons:temp skill

data remove storage weapons:temp skill
tp @s ~ ~ ~ ~-12 ~-3