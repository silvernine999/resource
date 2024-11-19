execute as @e[tag=boss_crown] at @n[tag=boss_main] run rotate @s ~ ~

execute store result score hp boss run data get entity @n[tag=boss_main] Health 10

execute if score landed boss matches 0 unless score pattern_tick boss matches 1.. if entity @n[tag=boss_main,nbt={OnGround:1b}] at @n[tag=boss_main] run function mobs:boss/kingslime/patterns/king_jump
execute store result score landed boss run data get entity @n[tag=boss_main] OnGround

execute if score pattern_cool boss matches 1.. run scoreboard players remove pattern_cool boss 1

execute if score pattern_cool boss matches 0 if entity @n[tag=boss_main,nbt={OnGround:1b}] as @n[tag=boss_main] at @s run function mobs:boss/kingslime/patterns/superjump/start
execute if score pattern_tick boss matches 1.. as @n[tag=boss_main] at @s run function mobs:boss/kingslime/patterns/superjump/tick

scoreboard players operation hp boss += nextPhaseHp boss
execute store result bossbar boss_main value run scoreboard players get hp boss

execute if entity @e[tag=boss_main,nbt={Size:0}] run function mobs:boss/kingslime/phase/2_start