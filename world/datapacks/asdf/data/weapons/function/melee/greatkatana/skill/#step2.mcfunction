#particle minecraft:ash ~ ~1 ~ 0.1 0.2 0.1 1 50
summon block_display ~ ~.6 ~ {Tags:["temp_loader"], teleport_duration:4}
scoreboard players set @n[tag=temp_loader] autokilll 10
ride @s mount @n[tag=temp_loader]

execute rotated ~ 0 unless block ^ ^ ^-1 minecraft:air run return 0
execute rotated ~ 0 unless block ^ ^1 ^-1 minecraft:air run return 0
execute rotated ~ 0 run tp @n[tag=temp_loader] ^ ^.6 ^-1
execute rotated ~ 0 unless block ^ ^ ^-2 minecraft:air run return 0
execute rotated ~ 0 unless block ^ ^1 ^-2 minecraft:air run return 0
execute rotated ~ 0 run tp @n[tag=temp_loader] ^ ^.6 ^-2
execute rotated ~ 0 unless block ^ ^ ^-3 minecraft:air run return 0
execute rotated ~ 0 unless block ^ ^1 ^-3 minecraft:air run return 0
execute rotated ~ 0 run tp @n[tag=temp_loader] ^ ^.6 ^-3
execute rotated ~ 0 unless block ^ ^ ^-4 minecraft:air run return 0
execute rotated ~ 0 unless block ^ ^1 ^-4 minecraft:air run return 0
execute rotated ~ 0 run tp @n[tag=temp_loader] ^ ^.6 ^-4
execute rotated ~ 0 unless block ^ ^ ^-5 minecraft:air run return 0
execute rotated ~ 0 unless block ^ ^1 ^-5 minecraft:air run return 0
execute rotated ~ 0 run tp @n[tag=temp_loader] ^ ^.6 ^-5