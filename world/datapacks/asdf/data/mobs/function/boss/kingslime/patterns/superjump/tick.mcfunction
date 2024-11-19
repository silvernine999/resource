execute if score pattern_tick boss matches ..50 if score phase boss matches 1 run particle angry_villager ~ ~ ~ 4 4 4 0 12 force
execute if score pattern_tick boss matches ..50 if score phase boss matches 1 run particle item_slime ~ ~ ~ 4 4 4 0 80
execute if score pattern_tick boss matches ..50 if score phase boss matches 2 run particle angry_villager ~ ~ ~ 3 3 3 0 9 force
execute if score pattern_tick boss matches ..50 if score phase boss matches 2 run particle item_slime ~ ~ ~ 3 3 3 0 60
execute if score pattern_tick boss matches ..50 if score phase boss matches 3 run particle angry_villager ~ ~ ~ 2 2 2 0 6 force
execute if score pattern_tick boss matches ..50 if score phase boss matches 3 run particle item_slime ~ ~ ~ 2 2 2 0 40

execute if score pattern_tick boss matches ..50 store result bossbar boss_pattern value run scoreboard players get pattern_tick boss

execute if score pattern_tick boss matches 50 run playsound minecraft:entity.slime.jump hostile @a ~ ~ ~ 8 .5
execute if score pattern_tick boss matches 50 positioned as @r[distance=..64] run tp @s ~ ~15 ~
execute if score pattern_tick boss matches 50 unless entity @a[distance=..64] run tp @s ~ ~15 ~
#execute if score pattern_tick boss matches 51 positioned over motion_blocking run particle dust{color:[1.0,0.0,0.0],scale:1} ~ ~.1 ~ 4 0 4 0 500
execute if score pattern_tick boss matches 51 positioned over motion_blocking run function mobs:boss/warnbox/circle {x:30,y:30,dur:30}
execute if score pattern_tick boss matches 51 run rotate @s facing entity @p

execute if score pattern_tick boss matches 79 run data modify entity @s NoAI set value 0b
execute if score pattern_tick boss matches 79 run data modify entity @s OnGround set value 0b
execute if score pattern_tick boss matches 79 run attribute @s gravity modifier add superjump 1 add_value
execute if score pattern_tick boss matches 79 run attribute @s attack_damage modifier add superjump 1 add_multiplied_total

execute if score pattern_tick boss matches ..79 run scoreboard players add pattern_tick boss 1
execute if score pattern_tick boss matches 80 if entity @n[tag=boss_main,nbt={OnGround:1b}] run function mobs:boss/kingslime/patterns/superjump/land