execute as @a at @s if block ~ -64 ~ barrier run particle cloud ~ ~1 ~ .2 .4 .2 .5 50
execute as @a at @s if block ~ -64 ~ barrier run particle block_marker{block_state:barrier} ~ ~1 ~
execute as @a at @s if block ~ -64 ~ barrier run playsound entity.pig.ambient block @s ~ ~ ~ 99
execute as @a at @s if block ~ -64 ~ barrier facing entity @n[name=location_boss_slime] feet run tp @s ^ ^ ^2