execute if score @s wskilltick matches 50 run function weapons:melee/greatkatana/skill/step1
execute if score @s wskilltick matches 50 run playsound entity.player.attack.sweep player @s ^ ^ ^3 1 0.5
execute if score @s wskilltick matches 45 run playsound entity.player.attack.sweep player @s ^ ^ ^3 1 0.5
execute if score @s wskilltick matches 45 run function weapons:melee/greatkatana/skill/step2
#execute if score @s wskilltick matches 45 run tag @e[tag=temp_loader] remove temp_loader
#execute if score @s wskilltick matches 40 run ride @s dismount
execute if score @s wskilltick matches 21..45 if score @s wskillstat matches 0 if score @s damagecheck_absorb matches 1.. run function weapons:melee/greatkatana/skill/step3
execute if score @s wskilltick matches 20 if score @s wskillstat matches 1 run function weapons:melee/greatkatana/skill/step4
execute if score @s wskilltick matches 20 if score @s wskillstat matches 0 run scoreboard players set @s wskilltick 1
execute if score @s wskilltick matches 1 run function weapons:melee/greatkatana/skill/end