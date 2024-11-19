execute at @n[type=#weapons:mob,dx=0,dy=0,dz=0] run particle dust{color:[0.8, 0.0, 0.8],scale:1} ~ ~1 ~ .2 .4 .2 1 100
execute at @n[type=#weapons:mob,dx=0,dy=0,dz=0] run particle sweep_attack ~ ~1 ~ 0 0 0 1 1
execute at @n[type=#weapons:mob,dx=0,dy=0,dz=0] run playsound block.amethyst_cluster.break player @a ~ ~1 ~ 2 1
$damage @n[type=#weapons:mob,dx=0,dy=0,dz=0] $(damage) minecraft:indirect_magic by @p[nbt={UUID: $(owner)}]
function weapons:magic/magicswords/projectile/kill with entity @s data