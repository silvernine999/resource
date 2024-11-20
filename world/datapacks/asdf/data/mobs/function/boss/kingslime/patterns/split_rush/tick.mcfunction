execute if score @s boss_summons_tick matches 150 run data modify entity @s NoAI set value 1b

execute if score @s boss_summons_tick matches 150..200 rotated ~ 0 anchored eyes run function mobs:boss/kingslime/patterns/split_rush/particle_direction
execute if score @s boss_summons_tick matches 150..180 run rotate @s facing entity @p

execute if score @s boss_summons_tick matches 180 if entity @s[tag=boss_split_big] positioned over world_surface positioned ~ ~.1 ~ run function mobs:boss/warnbox/direction {x:5,y:20,dur:30}
execute if score @s boss_summons_tick matches 180 if entity @s[tag=boss_split_small] positioned over world_surface positioned ~ ~.1 ~ run function mobs:boss/warnbox/direction {x:3,y:20,dur:30}

execute if score @s boss_summons_tick matches 200..210 rotated ~ 0 if blocks ^-3 ^ ^1 ^3 ^ ^3 0 300 0 masked run tp @s ^ ^ ^2
execute if score @s boss_summons_tick matches 200..210 if entity @s[tag=boss_split_big] positioned ~-2.5 ~ ~-2.5 as @a[dx=4,dy=4,dz=4] run damage @s 12 mace_smash by @n[tag=boss_split_big]
execute if score @s boss_summons_tick matches 200..210 if entity @s[tag=boss_split_small] positioned ~-1.5 ~ ~-1.5 as @a[dx=2,dy=2,dz=2] run damage @s 12 mace_smash by @n[tag=boss_split_small]

execute if score @s boss_summons_tick matches 210 run data modify entity @s NoAI set value 0b
execute if score @s boss_summons_tick matches 210 store result score @s boss_summons_tick run random value 0..40

scoreboard players add @s boss_summons_tick 1