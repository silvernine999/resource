execute if score pattern_cycle boss matches 1..2 run scoreboard players set pattern_cool boss 40
execute if score pattern_cycle boss matches 3 store result score pattern_cool boss run random value 120..150

data modify entity @s NoAI set value 1b

scoreboard players set pattern_tick boss 1

execute if score pattern_cycle boss matches 1 run bossbar set boss_pattern name "뛰어올라 찍기"
execute if score pattern_cycle boss matches 1 run bossbar set boss_pattern max 20
execute if score pattern_cycle boss matches 3 run bossbar set boss_pattern max 40
bossbar set boss_pattern value 0
bossbar set boss_pattern visible true