execute unless items entity @s weapon.mainhand *[custom_data~{weapontype:"magic"}] run return 0

execute store result score weapon temporary run data get entity @s SelectedItem.components."minecraft:custom_data".magic_damage 100

scoreboard players set modifier temporary 100
scoreboard players set add temporary 0

execute store result score add temporary run data get entity @s Inventory[{Slot:103b}].components."minecraft:custom_data".magic_damage
scoreboard players operation modifier temporary += add temporary
scoreboard players set add temporary 0

execute store result score add temporary run data get entity @s Inventory[{Slot:102b}].components."minecraft:custom_data".magic_damage
scoreboard players operation modifier temporary += add temporary
scoreboard players set add temporary 0

execute store result score add temporary run data get entity @s Inventory[{Slot:101b}].components."minecraft:custom_data".magic_damage
scoreboard players operation modifier temporary += add temporary
scoreboard players set add temporary 0

execute store result score add temporary run data get entity @s Inventory[{Slot:100b}].components."minecraft:custom_data".magic_damage
scoreboard players operation modifier temporary += add temporary
scoreboard players set add temporary 0

execute store result score add temporary run data get entity @s Inventory[{Slot:-106b}].components."minecraft:custom_data".magic_damage
scoreboard players operation modifier temporary += add temporary

scoreboard players operation weapon temporary *= modifier temporary
execute store result storage weapons:temp return int 1 run scoreboard players get weapon temporary
scoreboard players reset weapon temporary
scoreboard players reset modifier temporary
scoreboard players reset add temporary

return run data get storage weapons:temp return