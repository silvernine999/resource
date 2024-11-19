execute unless items entity @s weapon.mainhand *[custom_data~{weapontype:"range"}] run return 0

execute store result score weapon temporary run data get entity @s SelectedItem.components."minecraft:custom_data".range_damage 100
execute store result score modifier temporary run function weapons:range/get_range_modifier

scoreboard players operation weapon temporary *= modifier temporary
execute store result storage weapons:temp return int 1 run scoreboard players get weapon temporary
scoreboard players reset weapon temporary
scoreboard players reset modifier temporary

return run data get storage weapons:temp return