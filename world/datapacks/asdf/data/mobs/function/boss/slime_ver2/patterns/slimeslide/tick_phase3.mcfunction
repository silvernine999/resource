execute if score pattern_tick boss matches ..30 facing entity @p eyes run rotate @s ~ 0

execute if score pattern_tick boss matches 30 positioned over world_surface positioned ~ ~.1 ~ run function mobs:boss/slime_ver2/patterns/slimeslide/slide_marker

execute if score pattern_tick boss matches 50..66 run particle dust_pillar{block_state:lime_terracotta} ~ ~ ~ .5 0 .5 .1 100
execute if score pattern_tick boss matches 50..66 run particle dust_pillar{block_state:lime_terracotta} ^ ^ ^2 .5 0 .5 .1 100
execute if score pattern_tick boss matches 50..66 positioned ~-2.5 ~ ~-2.5 as @a[dx=4,dy=4,dz=4] run damage @s 20 mace_smash by @n[tag=boss_main]
execute if score pattern_tick boss matches 50..66 rotated ~ 0 if blocks ^-3 ^ ^1 ^3 ^ ^3 0 300 0 masked run tp @s ^ ^ ^4

execute if score pattern_tick boss matches 49 run rotate @s facing entity @n[name=slide1]
execute if score pattern_tick boss matches 51 run rotate @s facing entity @n[name=slide2]
execute if score pattern_tick boss matches 55 run rotate @s facing entity @n[name=slide3]
execute if score pattern_tick boss matches 59 run rotate @s facing entity @n[name=slide4]
execute if score pattern_tick boss matches 63 run rotate @s facing entity @n[name=slide5]

execute if score pattern_tick boss matches 66 run bossbar set boss_pattern visible false
execute if score pattern_tick boss matches 66 run data modify entity @s NoAI set value 0b
execute if score pattern_tick boss matches 66 run scoreboard players set pattern_cycle boss 1
execute if score pattern_tick boss matches 66 run scoreboard players reset pattern_tick boss