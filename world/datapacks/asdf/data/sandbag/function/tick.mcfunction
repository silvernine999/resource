execute as @e[tag=sandbagreset] on target run function sandbag:reset
execute as @e[tag=sandbaghp] on target run function sandbag:bossbar

execute store result bossbar minecraft:sandbag value run data get entity @e[tag=sandbag,limit=1] Health 10
execute store result storage minecraft:sandbag bossbarhp int 1 run data get entity @e[tag=sandbag,limit=1] Health
bossbar set sandbag name [{"bold":true,"color":"gold","text":"샌드백 HP : "},{"color":"red","nbt":"bossbarhp","storage":"sandbag"},{"color":"red","text":" / 1000"}]

execute store result score currentHp sandbag run data get entity @e[tag=sandbag,limit=1] Health 10
execute unless score currentHp sandbag = lastHp sandbag run function sandbag:damage