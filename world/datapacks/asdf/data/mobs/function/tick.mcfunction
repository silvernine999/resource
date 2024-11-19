execute if entity @e[tag=boss_core] run function mobs:boss/tick

execute at @e[tag=mob_spawnpoint] run particle minecraft:ominous_spawning ~.5 ~ ~ 0 0 .2 0 1
execute at @e[tag=mob_spawnpoint] run particle minecraft:ominous_spawning ~-.5 ~ ~ 0 0 .2 0 1
execute at @e[tag=mob_spawnpoint] run particle minecraft:ominous_spawning ~ ~ ~.5 .2 0 0 0 1
execute at @e[tag=mob_spawnpoint] run particle minecraft:ominous_spawning ~ ~ ~-.5 .2 0 0 0 1

execute at @e[tag=mob_spawnpoint_special] run particle dust{color:[1.0,0.8,0.0],scale:.5} ~.5 ~ ~ 0 0 .2 0 5
execute at @e[tag=mob_spawnpoint_special] run particle dust{color:[1.0,0.8,0.0],scale:.5} ~-.5 ~ ~ 0 0 .2 0 5
execute at @e[tag=mob_spawnpoint_special] run particle dust{color:[1.0,0.8,0.0],scale:.5} ~ ~ ~.5 .2 0 0 0 5
execute at @e[tag=mob_spawnpoint_special] run particle dust{color:[1.0,0.8,0.0],scale:.5} ~ ~ ~-.5 .2 0 0 0 5