execute if score pattern_tick boss matches ..30 facing entity @p eyes run rotate @s ~ 0

execute if score pattern_tick boss matches 30 positioned over world_surface positioned ~ ~.1 ~ run function mobs:boss/warnbox/direction {x:7,y:30,dur:35}

execute if score pattern_tick boss matches 50..65 run particle dust_pillar{block_state:lime_terracotta} ~ ~ ~ 1 0 1 .1 100
execute if score pattern_tick boss matches 50..65 positioned ~-3.5 ~ ~-3.5 as @a[dx=6,dy=6,dz=6] run damage @s 20 mace_smash by @n[tag=boss_main]
execute if score pattern_tick boss matches 50..65 rotated ~ 0 if blocks ^-3 ^ ^1 ^3 ^ ^3 0 300 0 masked run tp @s ^ ^ ^2

execute if score pattern_tick boss matches 65 run bossbar set boss_pattern visible false
execute if score pattern_tick boss matches 65 run data modify entity @s NoAI set value 0b
execute if score pattern_tick boss matches 65 run scoreboard players set pattern_cycle boss 1
execute if score pattern_tick boss matches 65 run scoreboard players reset pattern_tick boss