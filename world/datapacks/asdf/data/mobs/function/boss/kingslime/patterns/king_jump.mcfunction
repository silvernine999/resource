particle cloud ~ ~ ~ 5 0 5 0 1000
particle block{block_state:dirt} ~ ~1 ~ 5 .5 5 1 1000
execute at @n[tag=boss_main] as @a[distance=..15,nbt={OnGround:1b}] run scoreboard players set @s boss_debuff 3
#execute at @n[tag=boss_main] as @a[distance=..15,nbt={OnGround:1b}] run damage @s 10 mace_smash by @n[tag=boss_main]