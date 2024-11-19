particle block{block_state:{Name:redstone_block}} ~ ~ ~ .3 .3 .3 0 15
particle crit

tp @s ^ ^ ^1
function weapons:range/woodenbow/projectile/display with entity @s data

execute unless block ~ ~ ~ air run function weapons:range/woodenbow/projectile/kill with entity @s data
execute positioned ~-.8 ~-.8 ~-.8 if entity @e[type=#weapons:mob,dx=.6,dy=.6,dz=.6] run function weapons:range/woodenbow/projectile/damage with entity @s data

execute if score @s projectiletick matches ..0 run function weapons:range/woodenbow/projectile/kill with entity @s data