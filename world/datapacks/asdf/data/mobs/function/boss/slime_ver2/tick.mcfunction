execute if score summonAnimation boss matches 0.. run function mobs:boss/slime_ver2/phase/0_tick

execute if score phase boss matches 1 run function mobs:boss/slime_ver2/phase/1_tick
execute if score phase boss matches 2 run function mobs:boss/slime_ver2/phase/2_tick
execute if score phase boss matches 3 run function mobs:boss/slime_ver2/phase/3_tick

execute unless entity @n[tag=boss_split_big] run bossbar remove boss_split_big
execute unless entity @n[tag=boss_split_small,tag=small_first] run bossbar remove boss_split_small1
execute unless entity @n[tag=boss_split_small,tag=small_second] run bossbar remove boss_split_small2

execute as @e[tag=boss_shooter] at @s run function mobs:boss/slime_ver2/patterns/projectile/tick_shooter
execute as @e[tag=boss_projectile] at @s run function mobs:boss/slime_ver2/patterns/projectile/tick_projectile
execute as @e[tag=boss_summons,type=slime] at @s run function mobs:boss/slime_ver2/patterns/split/tick