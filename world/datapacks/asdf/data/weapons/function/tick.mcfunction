execute as @a if items entity @s weapon.offhand *[minecraft:custom_data~{"weapon":1b}] run function weapons:detectoffhand with entity @s Inventory[{Slot:-106b}].components."minecraft:custom_data"

execute as @a[scores={wskilltick=1..}] at @s run function weapons:tick_skills

execute as @e[tag=projectile] at @s run function weapons:tick_projectiles with entity @s data
tag @e[nbt={inGround:1b}] remove customarrowcrit
execute as @e[tag=customarrowcrit] at @s run function weapons:range/arrow_event_crit with entity @s weapon.components."minecraft:custom_data"

scoreboard players remove @a[scores={wskillcool=1..}] wskillcool 1
scoreboard players remove @a[scores={wskilltick=1..}] wskilltick 1

scoreboard players remove @e[scores={projectiletick=1..}] projectiletick 1

scoreboard players remove @e[scores={autokilll=2..}] autokilll 1
kill @e[scores={autokilll=1}]

execute as @a[scores={wskillcool=1..}] run function weapons:skillcoolui