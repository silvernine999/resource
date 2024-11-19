execute if score summonAnimation boss matches 0.. run function mobs:boss/kingslime/phase/0_tick

execute if score phase boss matches 1 run function mobs:boss/kingslime/phase/1_tick
execute if score phase boss matches 2 run function mobs:boss/kingslime/phase/2_tick
execute if score phase boss matches 3 run function mobs:boss/kingslime/phase/3_tick

execute as @e[scores={boss_debuff=1..}] run function mobs:boss/kingslime/debuff
execute as @e[tag=boss_shooter] at @s run function mobs:boss/kingslime/patterns/projectile/tick_shooter
execute as @e[tag=boss_projectile] at @s run function mobs:boss/kingslime/patterns/projectile/tick_projectile
execute as @e[tag=boss_summons,type=slime] at @s run function mobs:boss/kingslime/patterns/split_rush/tick