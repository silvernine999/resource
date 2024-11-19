scoreboard objectives remove boss
scoreboard objectives remove boss_debuff
scoreboard objectives remove boss_summons_tick
bossbar set boss_main visible false
bossbar set boss_main players
bossbar set boss_pattern visible false
bossbar set boss_pattern players

kill @e[tag=boss_core]
tp @e[tag=boss_main] 0 -200 0
kill @e[tag=boss_main]
tp @e[tag=boss_summons,type=slime] 0 -200 0
kill @e[tag=boss_summons]