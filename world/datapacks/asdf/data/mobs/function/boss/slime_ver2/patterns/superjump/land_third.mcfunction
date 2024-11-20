particle cloud ~ ~ ~ 5 0 5 0 1000
particle block{block_state:dirt} ~ ~1 ~ 5 .5 5 1 1000
particle dust_pillar{block_state:dirt} ~ ~ ~ 5 0 5 .5 2000
execute at @n[tag=boss_main] as @a[distance=..15,nbt={OnGround:1b}] run damage @s 15 mace_smash by @n[tag=boss_main]

attribute @s gravity modifier remove superjump
attribute @s attack_damage modifier remove superjump
playsound block.anvil.land hostile @a ~ ~ ~ 8 1

summon marker ~ ~ ~ {Tags:["boss_summons","boss_shooter"]}
tp @n[tag=boss_shooter] ~ ~1 ~ ~ 0
scoreboard players set @n[tag=boss_shooter] boss_summons_tick 26

bossbar set boss_pattern visible false
scoreboard players reset pattern_tick boss
execute if score phase boss matches 1 run scoreboard players set pattern_cycle boss 1
execute if score phase boss matches 2..3 run scoreboard players set pattern_cycle boss 4