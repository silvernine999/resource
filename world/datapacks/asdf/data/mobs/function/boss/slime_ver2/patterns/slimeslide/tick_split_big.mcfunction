execute if score pattern_tick boss matches 2 run data modify entity @s NoAI set value 1b
execute if score pattern_tick boss matches 10 positioned over world_surface run tp @s ~ ~ ~
execute if score pattern_tick boss matches ..30 run rotate @s facing entity @p

execute if score pattern_tick boss matches 30 positioned over world_surface positioned ~ ~.1 ~ run function mobs:boss/warnbox/direction {x:7,y:20,dur:30}

execute if score pattern_tick boss matches 50..60 run particle dust_pillar{block_state:lime_concrete} ~ ~ ~ 1 0 1 0 100
execute if score pattern_tick boss matches 50..60 positioned ~-3.5 ~ ~-3.5 as @a[dx=6,dy=6,dz=6] run damage @s 15 mace_smash by @n[tag=boss_summons,tag=boss_split_big]
execute if score pattern_tick boss matches 50..60 rotated ~ 0 if blocks ^-3 ^ ^1 ^3 ^ ^3 0 300 0 masked run tp @s ^ ^ ^2

execute if score pattern_tick boss matches 60 run data modify entity @s NoAI set value 0b