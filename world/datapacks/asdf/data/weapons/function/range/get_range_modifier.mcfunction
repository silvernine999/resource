scoreboard players set modifier temporary 100
scoreboard players set add temporary 0

execute store result score add temporary run data get entity @s Inventory[{Slot:103b}].components."minecraft:custom_data".range_damage
scoreboard players operation modifier temporary += add temporary
scoreboard players set add temporary 0

execute store result score add temporary run data get entity @s Inventory[{Slot:102b}].components."minecraft:custom_data".range_damage
scoreboard players operation modifier temporary += add temporary
scoreboard players set add temporary 0

execute store result score add temporary run data get entity @s Inventory[{Slot:101b}].components."minecraft:custom_data".range_damage
scoreboard players operation modifier temporary += add temporary
scoreboard players set add temporary 0

execute store result score add temporary run data get entity @s Inventory[{Slot:100b}].components."minecraft:custom_data".range_damage
scoreboard players operation modifier temporary += add temporary
scoreboard players set add temporary 0

execute store result score add temporary run data get entity @s Inventory[{Slot:-106b}].components."minecraft:custom_data".range_damage
scoreboard players operation modifier temporary += add temporary

execute store result storage weapons:temp return int 1 run scoreboard players get modifier temporary
scoreboard players reset modifier temporary
scoreboard players reset add temporary

return run data get storage weapons:temp return