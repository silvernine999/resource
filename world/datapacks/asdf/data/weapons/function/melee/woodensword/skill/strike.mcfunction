execute rotated ~ 0 run particle minecraft:crit ^ ^1 ^2.5 .15 1 .15 0 200
execute rotated ~ 0 run particle minecraft:block{block_state:dirt} ^ ^.3 ^2.5 .5 0 .5 0 100

execute store result storage weapons:temp damage float 3 run attribute @s minecraft:attack_damage get
data modify storage weapons:temp UUID set from entity @s UUID
execute rotated ~ 0 positioned ^ ^ ^2.5 positioned ~-2 ~ ~-2 as @e[type=#weapons:mob,dx=3,dy=3,dz=3] run function weapons:melee/woodensword/skill/damage with storage weapons:temp
data remove storage weapons:temp damage
data remove storage weapons:temp UUID

playsound minecraft:entity.player.attack.crit player @s ^ ^ ^3 1 .7