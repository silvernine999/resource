scoreboard players set phase boss 1

scoreboard players set nextPhaseHp boss 0
scoreboard players set hp boss 0
scoreboard players set landed boss 0
scoreboard players set pattern_cool boss 200
scoreboard players set pattern_tick boss 0

function mobs:boss/kingslime/summons/king
function mobs:boss/kingslime/summons/crown
ride @s mount @n[tag=boss_main]
execute as @n[tag=boss_crown] run ride @s mount @n[tag=boss_main]
data modify entity @n[tag=boss_main] Motion[1] set value 1d

execute store result bossbar boss_main max run attribute @n[tag=boss_main] max_health get 30
execute store result score nextPhaseHp boss run attribute @n[tag=boss_main] max_health get 20

execute store result score hp_projectile_second boss run attribute @n[tag=boss_main] max_health get 6.66
execute store result score hp_projectile_third boss run attribute @n[tag=boss_main] max_health get 3.33

execute store result score landed boss run data get entity @n[tag=boss_main] OnGround

tellraw @a {"text": "킹 슬라임이 깨어났습니다!", "color": "dark_purple"}