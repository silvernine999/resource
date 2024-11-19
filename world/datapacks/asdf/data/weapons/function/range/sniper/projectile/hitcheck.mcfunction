particle end_rod ~ ~ ~ 0 0 0 0 1 force
execute unless block ~ ~ ~ air run return 1
execute positioned ~-.5 ~-.5 ~-.5 if entity @e[type=#weapons:mob,dx=0,dy=0,dz=0] run return 1