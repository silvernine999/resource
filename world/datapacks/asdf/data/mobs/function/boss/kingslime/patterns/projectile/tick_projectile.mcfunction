tp @s ^ ^ ^1
particle item_slime ~ ~ ~ 0 0 0 0 10

execute positioned ~-.5 ~-.5 ~-.5 if entity @a[dx=0,dy=0,dz=0] run function mobs:boss/kingslime/patterns/projectile/damage