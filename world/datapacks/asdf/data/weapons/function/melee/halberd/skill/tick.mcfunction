execute if score @s wskilltick matches 20 run attribute @s minecraft:movement_speed modifier add halberd -0.5 add_multiplied_total
execute if score @s wskilltick matches 20 run attribute @s minecraft:attack_speed modifier add halberd -1 add_multiplied_total
execute if score @s wskilltick matches 20 run attribute @s minecraft:entity_interaction_range modifier add halberd -1 add_multiplied_total
execute if score @s wskilltick matches 20 run playsound minecraft:entity.experience_orb.pickup player @s ^ ^ ^3 1 .7

execute if score @s wskilltick matches 1 run attribute @s minecraft:movement_speed modifier remove halberd
execute if score @s wskilltick matches 1 run attribute @s minecraft:attack_speed modifier remove halberd
execute if score @s wskilltick matches 1 run attribute @s minecraft:entity_interaction_range modifier remove halberd
execute if score @s wskilltick matches 1 run tag @s remove halberd