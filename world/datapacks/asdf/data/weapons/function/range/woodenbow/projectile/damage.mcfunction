execute at @e[type=#weapons:mob,dx=.6,dy=.6,dz=.6] run particle crit ~ ~1 ~ 0 0 0 1 5
execute at @e[type=#weapons:mob,dx=.6,dy=.6,dz=.6] run playsound entity.arrow.hit player @a ~ ~1 ~ 1 2
$execute as @e[type=#weapons:mob,dx=.6,dy=.6,dz=.6] run damage @s $(damage) minecraft:arrow by @p[nbt={UUID: $(owner)}]