playsound entity.arrow.hit_player player @s ^ ^ ^3 1 .7
particle dust_color_transition{from_color:[1.0,0.0,0.0],to_color:[1.0,1.0,1.0],scale:1} ~ ~ ~ 2 2 2 0 300
effect give @s resistance 2 3 true
attribute @s max_absorption modifier remove greatkatana
scoreboard players set @s damagecheck_absorb 0
scoreboard players set @s wskillstat 1
scoreboard players set @s wskilltick 30