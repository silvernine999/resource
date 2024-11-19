data merge entity @e[tag=sandbag,limit=1] {Glowing:0b}
tp @e[tag=sandbag] ~ 0 ~
kill @e[tag=sandbag]
execute positioned 0 57.5 8 run function sandbag:spawn

scoreboard players set currentHp sandbag 10000
scoreboard players set lastHp sandbag 10000

playsound minecraft:entity.experience_orb.pickup
particle minecraft:wax_on 0 58.5 8 .2 .5 .2 0 50

data remove entity @e[tag=sandbagreset,limit=1] interaction