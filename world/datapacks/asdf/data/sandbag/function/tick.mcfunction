execute as @e[tag=sandbag_reset] on target run function sandbag:reset
execute as @e[tag=sandbag_hp] on target run function sandbag:bossbar

execute store result bossbar minecraft:sandbag value run data get entity @n[tag=sandbag] Health 10
execute store result storage minecraft:sandbag bossbarhp int 1 run data get entity @n[tag=sandbag] Health
bossbar set sandbag name [{"bold":true,"color":"gold","text":"샌드백 HP : "},{"color":"red","nbt":"bossbarhp","storage":"sandbag"},{"color":"red","text":" / 1000"}]

execute store result score currentHp sandbag run data get entity @n[tag=sandbag] Health 10
execute unless score currentHp sandbag = lastHp sandbag run function sandbag:damage

execute at @e[tag=sandbag] run bossbar set sandbag players @a[distance=..20]
execute as @e[tag=sandbag] at @s store result entity @s Glowing byte 1 if entity @p[distance=..20]