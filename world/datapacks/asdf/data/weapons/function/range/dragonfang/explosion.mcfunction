particle explosion ~ ~ ~ 0 0 0 0 1 force
particle flame ~ ~ ~ 0 0 0 .5 25
playsound entity.generic.explode player @a ~ ~ ~ 2 2

execute store result storage weapons:temp arrow.damage float 0.00005 run scoreboard players get @s arrow_damage
data modify storage weapons:temp arrow.owner set from entity @s Owner
execute positioned ~-2 ~-2 ~-2 as @e[type=#weapons:mob,dx=3,dy=3,dz=3] run function weapons:range/dragonfang/explosion_damage with storage weapons:temp arrow
data remove storage weapons:temp arrow

kill @s