execute if entity @e[tag=boss_core] run return run tellraw @a "! 다른 보스가 이미 존재합니다 !"

summon marker ~ ~ ~ {Tags:["boss_core","kingslime"]}

scoreboard objectives add boss dummy
scoreboard players set summonAnimation boss 0
scoreboard objectives add boss_debuff dummy
scoreboard objectives add boss_summons_tick dummy

bossbar set boss_main visible true
bossbar set boss_main players @a
bossbar set boss_pattern players @a

bossbar set boss_main max 60
bossbar set boss_main value 0
bossbar set boss_pattern name "뛰어올라 찍기"
bossbar set boss_pattern max 50
bossbar set boss_pattern value 0

playsound entity.ender_dragon.growl hostile @a ~ ~ ~ 5 2
function musics:boss/slime