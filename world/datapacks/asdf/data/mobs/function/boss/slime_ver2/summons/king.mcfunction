summon slime ~ ~ ~ {Tags:["boss_main"],Size:1,PersistenceRequired:true,CustomName:'{"bold":true,"color":"dark_purple","text":"킹 슬라임"}',attributes:[{id:"attack_damage",base:15},{id:fall_damage_multiplier,base:0},{id:follow_range,base:2048},{id:knockback_resistance,base:1}]}

execute store result entity @n[tag=boss_main] attributes[{id:"minecraft:max_health"}].base float 1 run data get storage config:boss slime.hp
execute store result entity @n[tag=boss_main] Health double 1 run attribute @n[tag=boss_main] max_health get

execute if score phase boss matches 1 run attribute @n[tag=boss_main] scale base set 8
execute if score phase boss matches 2 run attribute @n[tag=boss_main] scale base set 5
execute if score phase boss matches 3 run attribute @n[tag=boss_main] scale base set 2.5
execute if score phase boss matches 1 run attribute @n[tag=boss_main] jump_strength base set 1.2
execute if score phase boss matches 2..3 run attribute @n[tag=boss_main] jump_strength base set 1