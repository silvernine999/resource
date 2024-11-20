summon item_display ~ ~ ~ {Tags:["boss_summons","boss_projectile","temp_boss_projectile"], Glowing:0b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[1f,0f,0f,1f],translation:[0f,0f,0f],scale:[1f,1f,1f]},item:{id:"minecraft:slime_ball",count:1},teleport_duration:1}
rotate @n[tag=temp_boss_projectile] ~ 0
scoreboard players set @n[tag=temp_boss_projectile] Lifetime 50
tag @e[tag=temp_boss_projectile] remove temp_boss_projectile