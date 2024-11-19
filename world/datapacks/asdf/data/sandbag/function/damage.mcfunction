execute store result storage sandbag damage float .1 run scoreboard players operation lastHp sandbag -= currentHp sandbag
execute as @e[tag=sandbag] on attacker run tellraw @s [{"bold":true,"color":"gold","text":"가한 피해량 : "},{"bold":false,"color":"red","text":"♥"},{"bold":true,"color":"red","nbt":"damage","storage":"sandbag"}]
scoreboard players operation lastHp sandbag = currentHp sandbag