execute if score @s wskilltick matches 15 run attribute @s minecraft:movement_speed modifier add woodensword -0.8 add_multiplied_total
execute if score @s wskilltick matches 15 run attribute @s minecraft:jump_strength modifier add woodensword -1 add_multiplied_total
execute if score @s wskilltick matches 15 run attribute @s minecraft:attack_speed modifier add woodensword -1 add_multiplied_total
execute if score @s wskilltick matches 15 run attribute @s minecraft:entity_interaction_range modifier add woodensword -1 add_multiplied_total
execute if score @s wskilltick matches 15 run playsound minecraft:entity.experience_orb.pickup player @s ^ ^ ^3 1 .7

execute if score @s wskilltick matches 10 run function weapons:melee/woodensword/skill/strike

execute if score @s wskilltick matches 1 run attribute @s minecraft:movement_speed modifier remove woodensword
execute if score @s wskilltick matches 1 run attribute @s minecraft:jump_strength modifier remove woodensword
execute if score @s wskilltick matches 1 run attribute @s minecraft:attack_speed modifier remove woodensword
execute if score @s wskilltick matches 1 run attribute @s minecraft:entity_interaction_range modifier remove woodensword
execute if score @s wskilltick matches 1 run tag @s remove woodensword