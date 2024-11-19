scoreboard objectives remove boss
scoreboard objectives remove boss_debuff
scoreboard objectives remove boss_summons_tick
bossbar set boss_main visible false
bossbar set boss_main players
bossbar set boss_pattern visible false
bossbar set boss_pattern players

schedule clear musics:boss/slime
stopsound @a record
playsound entity.dragon_fireball.explode hostile @a ~ ~ ~ 99 .5
playsound entity.player.levelup hostile @a ~ ~ ~ 99 .5

execute at @e[tag=boss_summons,type=slime] run particle cloud ~ ~ ~ 0 0 0 .5 50
execute at @e[tag=boss_summons,type=slime] run particle sneeze ~ ~ ~ 0 0 0 1 100
execute at @e[tag=boss_summons,type=slime] run particle dust_pillar{block_state:lime_terracotta} ~ ~ ~ 1 0 1 1 500

kill @e[tag=boss_core]
execute as @e[tag=boss_main] run function mobs:boss/kingslime/killslime
execute as @e[tag=boss_summons,type=slime] run function mobs:boss/kingslime/killslime
kill @e[tag=boss_summons]