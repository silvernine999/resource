execute if score @s wskilltick matches 45 run function weapons:magic/magicswords/skill/step1 {hoverpos:.5}
execute if score @s wskilltick matches 30 run function weapons:magic/magicswords/skill/step1 {hoverpos:0}
execute if score @s wskilltick matches 15 run function weapons:magic/magicswords/skill/step1 {hoverpos:-.5}
execute if score @s wskilltick matches 1 run function weapons:magic/magicswords/skill/end