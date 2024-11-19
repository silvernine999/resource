execute if score @s boss_debuff matches 3 run attribute @s gravity modifier add boss_debuff -.5 add_value
execute if score @s boss_debuff matches 1 run attribute @s gravity modifier remove boss_debuff
scoreboard players remove @s boss_debuff 1