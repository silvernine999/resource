particle dust{color:[0.0,1.0,0.0],scale:1} ~ ~ ~ 0 0 0 0 10
tp @s ^ ^ ^1

execute unless block ^ ^ ^1 air run function tests:scatter/boom_mid

execute if score @s projectiletick matches ..0 run kill @s