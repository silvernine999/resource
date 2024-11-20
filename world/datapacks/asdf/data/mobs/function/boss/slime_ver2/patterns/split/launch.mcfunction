execute if data entity @s {OnGround:0b} positioned 0 0 0 rotated ~ 0 run summon marker ^ ^ ^3 {Tags:["temp_vector"]}
execute if data entity @s {OnGround:1b} positioned 0 0 0 rotated ~ 0 run summon marker ^ ^.5 ^3 {Tags:["temp_vector"]}
data modify entity @s Motion set from entity @n[tag=temp_vector] Pos
kill @e[tag=temp_vector]