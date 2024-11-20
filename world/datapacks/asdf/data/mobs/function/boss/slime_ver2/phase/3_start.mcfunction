scoreboard players set phase boss 3

scoreboard players set pattern_cool boss 100
scoreboard players reset pattern_tick boss
scoreboard players set pattern_cycle boss 1

bossbar set boss_pattern visible false

bossbar add boss_split_small1 {"text": "분열된 슬라임 (소형)", "bold": true, "color": "dark_purple"}
bossbar add boss_split_small2 {"text": "분열된 슬라임 (소형)", "bold": true, "color": "dark_purple"}
bossbar set boss_split_small1 color red
bossbar set boss_split_small2 color red
bossbar set boss_split_small1 players @a
bossbar set boss_split_small2 players @a

tag @e[tag=boss_main] add boss_summons
tag @e[tag=boss_main] remove boss_main

execute at @n[tag=boss_summons] run function mobs:boss/slime_ver2/summons/king
execute at @n[tag=boss_summons] run function mobs:boss/slime_ver2/summons/split_small
execute at @n[tag=boss_summons] run function mobs:boss/slime_ver2/summons/split_small
ride @s mount @n[tag=boss_main]
execute as @n[tag=boss_crown] run ride @s mount @n[tag=boss_main]

scoreboard players reset nextPhaseHp boss

execute as @e[tag=boss_summons,nbt={Size:0}] run function mobs:boss/slime_ver2/killslime

execute at @n[tag=boss_main] run particle cloud ~ ~ ~ 0 0 0 1 100
execute at @n[tag=boss_main] run particle sneeze ~ ~ ~ 0 0 0 1 250

execute store result bossbar boss_split_small1 max run attribute @n[tag=boss_split_small,tag=small_first] max_health get 10
execute store result bossbar boss_split_small2 max run attribute @n[tag=boss_split_small,tag=small_second] max_health get 10

title @a subtitle {"text": "킹 슬라임 2세가 분열되었다!"}
title @a title ""