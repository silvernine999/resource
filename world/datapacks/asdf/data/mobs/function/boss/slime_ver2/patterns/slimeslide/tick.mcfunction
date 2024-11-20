scoreboard players add pattern_tick boss 1
execute store result bossbar boss_pattern value run scoreboard players get pattern_tick boss

execute if score phase boss matches 2 run function mobs:boss/slime_ver2/patterns/slimeslide/tick_phase2
execute if score phase boss matches 3 run function mobs:boss/slime_ver2/patterns/slimeslide/tick_phase3
execute as @e[tag=boss_summons,tag=boss_split_big] at @s run function mobs:boss/slime_ver2/patterns/slimeslide/tick_split_big
execute as @e[tag=boss_summons,tag=boss_split_small] at @s run function mobs:boss/slime_ver2/patterns/slimeslide/tick_split_small