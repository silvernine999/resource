scoreboard players add summonAnimation boss 1
execute store result bossbar boss_main value run scoreboard players get summonAnimation boss

particle cloud ~ ~ ~ 1 1 1 .1 50
execute if score summonAnimation boss matches 60 run particle cloud ~ ~ ~ 1 1 1 1 200

execute if score summonAnimation boss matches 1 run bossbar set boss_main name {"text": "킹 슬라임","obfuscated": true,"bold": true,"color": "dark_purple"}
execute if score summonAnimation boss matches 21 run bossbar set boss_main name [{"text": "킹 ","bold": true,"color": "dark_purple"}, {"text": "슬라임","obfuscated": true,"bold": true,"color": "dark_purple"}]
execute if score summonAnimation boss matches 31 run bossbar set boss_main name [{"text": "킹 슬","bold": true,"color": "dark_purple"}, {"text": "라임","obfuscated": true,"bold": true,"color": "dark_purple"}]
execute if score summonAnimation boss matches 41 run bossbar set boss_main name [{"text": "킹 슬라","bold": true,"color": "dark_purple"}, {"text": "임","obfuscated": true,"bold": true,"color": "dark_purple"}]
execute if score summonAnimation boss matches 51 run bossbar set boss_main name {"text": "킹 슬라임 2세","bold": true,"color": "dark_purple"}

execute if score summonAnimation boss matches 60 run function mobs:boss/slime_ver2/phase/1_start
execute if score summonAnimation boss matches 60 run scoreboard players reset summonAnimation