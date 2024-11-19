particle dust{color:[1.0,0.0,0.0],scale:1}
tp @s ^ ^ ^.5

execute unless block ^ ^ ^1 air run function tests:scatter/boom_big

execute if score @s projectiletick matches ..0 run function tests:scatter/boom_big