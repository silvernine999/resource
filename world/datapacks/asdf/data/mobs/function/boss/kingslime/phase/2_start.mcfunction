scoreboard players set phase boss 2

scoreboard players set pattern_cool boss 100
scoreboard players set pattern_tick boss 0

bossbar set boss_pattern visible false

tag @e[tag=boss_main] add boss_summons
tag @e[tag=boss_main] remove boss_main

execute at @n[tag=boss_summons] run function mobs:boss/kingslime/summons/king
execute at @n[tag=boss_summons] run function mobs:boss/kingslime/summons/split
ride @s mount @n[tag=boss_main]
execute as @n[tag=boss_crown] run ride @s mount @n[tag=boss_main]

execute store result score nextPhaseHp boss run attribute @n[tag=boss_main] max_health get 10

execute as @e[tag=boss_summons,nbt={Size:0}] run function mobs:boss/kingslime/killslime

execute at @n[tag=boss_main] run particle cloud ~ ~ ~ 0 0 0 1 100
execute at @n[tag=boss_main] run particle sneeze ~ ~ ~ 0 0 0 1 250

title @a subtitle {"text": "킹 슬라임이 분열되었다!"}
title @a title ""