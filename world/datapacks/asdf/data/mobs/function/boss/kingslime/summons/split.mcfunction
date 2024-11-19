summon slime ~ ~ ~ {Tags:["boss_summons",temp_boss_summons],Size:1,CustomName:'{"bold":true,"color":"dark_purple","text":"분열된 슬라임"}',Health:100f,attributes:[{id:"max_health",base:100},{id:"attack_damage",base:12},{id:fall_damage_multiplier,base:0},{id:follow_range,base:2048}]}

execute if score phase boss matches 2 run attribute @n[tag=temp_boss_summons] scale base set 5
execute if score phase boss matches 3 run attribute @n[tag=temp_boss_summons] scale base set 2.5
execute if score phase boss matches 2 run attribute @n[tag=temp_boss_summons] jump_strength base set .5
execute if score phase boss matches 3 run attribute @n[tag=temp_boss_summons] jump_strength base set .5
execute if score phase boss matches 2 run tag @n[tag=temp_boss_summons] add boss_split_big
execute if score phase boss matches 3 run tag @n[tag=temp_boss_summons] add boss_split_small

execute store result score @n[tag=temp_boss_summons] boss_summons_tick run random value 0..40
effect give @n[tag=temp_boss_summons] resistance infinite 4 true

tag @e[tag=temp_boss_summons] remove temp_boss_summons