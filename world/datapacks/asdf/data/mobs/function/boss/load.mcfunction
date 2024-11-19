execute if entity @e[tag=boss_core] run function mobs:boss/clear

bossbar add boss_main ""
bossbar set boss_main color red
bossbar set boss_main style notched_6
bossbar set boss_main visible false

bossbar add boss_pattern ""
bossbar set boss_pattern visible false

tellraw @a "-보스 로드됨"