execute if data entity @s {Size:0} run function mobs:boss/slime_ver2/killslime

execute if entity @s[tag=boss_split_big] store result bossbar boss_split_big value run data get entity @s Health 10
execute if entity @s[tag=boss_split_small,tag=small_first] store result bossbar boss_split_small1 value run data get entity @s Health 10
execute if entity @s[tag=boss_split_small,tag=small_second] store result bossbar boss_split_small2 value run data get entity @s Health 10

execute if score @s[tag=boss_split_big] boss_summons_tick matches 90..120 unless data entity @s {NoAI:1b} run particle item_slime ~ ~2 ~ 2 2 2 1 50 force
execute if score @s[tag=boss_split_small] boss_summons_tick matches 90..120 unless data entity @s {NoAI:1b} run particle item_slime ~ ~ ~ 1 1 1 1 50 force

execute if score @s boss_summons_tick matches 120 run function mobs:boss/slime_ver2/patterns/split/launch
execute if score @s boss_summons_tick matches 120 store result score @s boss_summons_tick run random value 0..40

scoreboard players add @s boss_summons_tick 1