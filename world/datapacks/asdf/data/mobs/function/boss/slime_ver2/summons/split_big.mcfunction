summon slime ~ ~ ~ {Tags:["boss_summons","temp_boss_summons","boss_split_big"],Size:1,attributes:[{id:"max_health",base:50},{id:"attack_damage",base:10},{id:fall_damage_multiplier,base:0},{id:follow_range,base:2048},{id:jump_strength,base:.5},{id:scale,base:5}],CustomName:'{"bold":true,"color":"dark_purple","text":"분열된 슬라임 (대형)"}'}

execute store result entity @n[tag=temp_boss_summons] Health double 1 run attribute @n[tag=temp_boss_summons] max_health get
execute store result score @n[tag=temp_boss_summons] boss_summons_tick run random value 0..40

tag @e[tag=temp_boss_summons] remove temp_boss_summons