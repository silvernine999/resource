particle dust_color_transition{from_color:[0.8,0.0,0.0],to_color:[0.0,0.0,0.0],scale:0.5} ^ ^ ^7.8 0 0 0 0 3
particle dust_color_transition{from_color:[0.9,0.0,0.0],to_color:[0.0,0.0,0.0],scale:0.5} ^ ^ ^7.6 0 0 0 0 3
particle dust_color_transition{from_color:[1.0,0.0,0.0],to_color:[0.0,0.0,0.0],scale:0.5} ^ ^ ^8 0 0 0 0 3
execute positioned ^ ^ ^7.5 positioned ~-1 ~-1 ~-1 as @e[type=#weapons:mob,dx=1,dy=1,dz=1] run function weapons:melee/greatkatana/projectile/doubleslash/damage with storage weapons:temp skill