execute as @e[tag=boss_crown] at @n[tag=boss_main] run rotate @s ~ ~

execute store result score hp boss run data get entity @n[tag=boss_main] Health 10

execute if score pattern_cool boss matches 1.. run scoreboard players remove pattern_cool boss 1

execute if score pattern_tick boss matches 1.. if score pattern_cycle boss matches 1..2 as @n[tag=boss_main] at @s run function mobs:boss/slime_ver2/patterns/superjump/tick
execute if score pattern_tick boss matches 1.. if score pattern_cycle boss matches 3 as @n[tag=boss_main] at @s run function mobs:boss/slime_ver2/patterns/superjump/tick_third
execute if score pattern_tick boss matches 1.. if score pattern_cycle boss matches 4 as @n[tag=boss_main] at @s run function mobs:boss/slime_ver2/patterns/slimeslide/tick
execute if score pattern_cool boss matches 0 if score pattern_cycle boss matches 1..3 if entity @n[tag=boss_main,nbt={OnGround:1b}] as @n[tag=boss_main] at @s run function mobs:boss/slime_ver2/patterns/superjump/start
execute if score pattern_cool boss matches 0 if score pattern_cycle boss matches 4 if entity @n[tag=boss_main,nbt={OnGround:1b}] as @n[tag=boss_main] at @s run function mobs:boss/slime_ver2/patterns/slimeslide/start

execute store result bossbar boss_main value run scoreboard players get hp boss

execute if entity @e[tag=boss_main,nbt={Size:0}] run title @a subtitle {"text": "킹 슬라임 2세가 쓰러졌습니다", "bold": true, "color": "light_purple"}
execute if entity @e[tag=boss_main,nbt={Size:0}] run title @a title {"text": "BOSS DEFEATED", "bold": true, "color": "gold"}
execute if entity @e[tag=boss_main,nbt={Size:0}] run function mobs:boss/rewards/item_spray
execute if entity @e[tag=boss_main,nbt={Size:0}] run function mobs:boss/slime_ver2/clear