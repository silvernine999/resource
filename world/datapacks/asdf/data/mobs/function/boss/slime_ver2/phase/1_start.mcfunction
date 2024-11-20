scoreboard players set phase boss 1

scoreboard players set nextPhaseHp boss 0
scoreboard players set hp boss 0
scoreboard players set pattern_cool boss 50
scoreboard players set pattern_tick boss 0
scoreboard players set pattern_cycle boss 1

function mobs:boss/slime_ver2/summons/king
function mobs:boss/slime_ver2/summons/crown
ride @s mount @n[tag=boss_main]
execute as @n[tag=boss_crown] run ride @s mount @n[tag=boss_main]
data modify entity @n[tag=boss_main] Motion[1] set value 1d

execute store result bossbar boss_main max run attribute @n[tag=boss_main] max_health get 30
execute store result score nextPhaseHp boss run attribute @n[tag=boss_main] max_health get 20

title @a subtitle {"text": "킹 슬라임 2세가 깨어났습니다", "bold": true, "color": "light_purple"}
title @a title {"text": "BOSS AWAKEN", "bold": true, "color": "gold"}