particle cloud ~ ~ ~ 3.5 0 3.5 0 1000
particle block{block_state:dirt} ~ ~1 ~ 3.5 .5 3.5 1 1000
particle dust_pillar{block_state:dirt} ~ ~ ~ 3.5 0 3.5 .5 2000
execute at @n[tag=boss_main] as @a[distance=..9,nbt={OnGround:1b}] run damage @s 15 mace_smash by @n[tag=boss_main]

attribute @s gravity modifier remove superjump
attribute @s attack_damage modifier remove superjump
playsound block.anvil.land hostile @a ~ ~ ~ 8 2

summon marker ~ ~ ~ {Tags:["boss_summons","boss_shooter"]}
tp @n[tag=boss_shooter] ~ ~1 ~ ~ 0
scoreboard players set @n[tag=boss_shooter] boss_summons_tick 6

scoreboard players reset pattern_tick boss
scoreboard players add pattern_cycle boss 1