scoreboard players set phase boss 2

scoreboard players set pattern_cool boss 100
scoreboard players reset pattern_tick boss
scoreboard players set pattern_cycle boss 1

bossbar set boss_pattern visible false

bossbar add boss_split_big {"text": "분열된 슬라임 (대형)", "bold": true, "color": "dark_purple"}
bossbar set boss_split_big color red
bossbar set boss_split_big players @a

tag @e[tag=boss_main] add boss_summons
tag @e[tag=boss_main] remove boss_main

execute at @n[tag=boss_summons] run function mobs:boss/slime_ver2/summons/king
execute at @n[tag=boss_summons] run function mobs:boss/slime_ver2/summons/split_big
ride @s mount @n[tag=boss_main]
execute as @n[tag=boss_crown] run ride @s mount @n[tag=boss_main]

execute store result score nextPhaseHp boss run attribute @n[tag=boss_main] max_health get 10

execute as @e[tag=boss_summons,nbt={Size:0}] run function mobs:boss/slime_ver2/killslime

execute at @n[tag=boss_main] run particle cloud ~ ~ ~ 0 0 0 1 100
execute at @n[tag=boss_main] run particle sneeze ~ ~ ~ 0 0 0 1 250

execute store result bossbar boss_split_big max run attribute @n[tag=boss_split_big] max_health get 10

title @a subtitle {"text": "킹 슬라임 2세가 분열되었다!"}
title @a title ""