damage @p[dx=0,dy=0,dz=0] 8 mob_projectile by @n[tag=boss_main]
effect give @p[dx=0,dy=0,dz=0] slowness 5 3

particle block{block_state:slime_block} ~ ~ ~ 0 0 0 0 50
playsound minecraft:entity.slime.death hostile @a ~ ~ ~ 4 .5

kill @s