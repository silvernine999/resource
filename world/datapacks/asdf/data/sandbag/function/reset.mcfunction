data merge entity @n[tag=sandbag] {Glowing:0b}
tp @n[tag=sandbag] ~ 0 ~
kill @n[tag=sandbag]
execute at @n[name=location_training_sandbag] run function sandbag:spawn

scoreboard players set currentHp sandbag 10000
scoreboard players set lastHp sandbag 10000

execute at @n[tag=sandbag_reset] run playsound minecraft:entity.experience_orb.pickup block @s ~ ~ ~
execute at @n[name=location_training_sandbag] run particle minecraft:wax_on ~ ~2 ~ .4 1 .4 0 100

data remove entity @n[tag=sandbag_reset] interaction