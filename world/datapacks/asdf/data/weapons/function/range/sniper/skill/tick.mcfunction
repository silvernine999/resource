execute if score @s wskilltick matches 20 run function weapons:range/sniper/skill/step1
execute if score @s wskilltick matches 10 run playsound minecraft:entity.generic.extinguish_fire player @s ^ ^ ^3 1 2
execute if score @s wskilltick matches 1 run function weapons:range/sniper/skill/end