execute at @n[type=#weapons:mob,dx=0,dy=0,dz=0] run particle dust{color:[0.5, 0.5, 1.0],scale:1} ~ ~1 ~ .2 .4 .2 1 100
execute at @n[type=#weapons:mob,dx=0,dy=0,dz=0] run playsound block.amethyst_cluster.break player @a ~ ~1 ~ 1 1.5
$damage @n[type=#weapons:mob,dx=0,dy=0,dz=0] $(damage) minecraft:indirect_magic by @p[nbt={UUID: $(owner)}]
scoreboard players set @s projectiletick 0