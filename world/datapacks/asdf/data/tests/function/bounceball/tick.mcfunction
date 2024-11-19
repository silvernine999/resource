particle flame ~ ~ ~ 0 0 0 0 1
tp @s ^ ^ ^1

execute unless block ^ ^ ^1 air run function tests:bounceball/flip

execute if score @s projectiletick matches ..0 run kill @s