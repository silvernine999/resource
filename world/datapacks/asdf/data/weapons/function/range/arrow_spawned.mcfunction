execute if entity @s[nbt={crit:1b}] run tag @s add customarrowcrit
data modify entity @s crit set value 0b
data modify entity @s damage set value 0

execute if entity @s[tag=customarrowcrit] store result score @s arrow_damage run data get entity @s weapon.components."minecraft:custom_data".range_damage_crit 100
execute if entity @s[tag=!customarrowcrit] store result score @s arrow_damage run data get entity @s weapon.components."minecraft:custom_data".range_damage 100
execute store result score modifier temporary run function weapons:range/arrow_spawned_getmodifier with entity @s
scoreboard players operation @s arrow_damage *= modifier temporary
scoreboard players reset modifier temporary