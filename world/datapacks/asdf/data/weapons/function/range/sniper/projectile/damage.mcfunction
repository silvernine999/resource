execute positioned ~-.5 ~-.5 ~-.5 as @n[type=#weapons:mob,dx=0,dy=0,dz=0] at @s anchored eyes run particle block{block_state:"redstone_block"} ^ ^ ^ 0 0 0 0 50
execute positioned ~-.5 ~-.5 ~-.5 at @n[type=#weapons:mob,dx=0,dy=0,dz=0] run playsound block.anvil.place player @a ~ ~1 ~ 5 1.5
$execute positioned ~-.5 ~-.5 ~-.5 as @n[type=#weapons:mob,dx=0,dy=0,dz=0] run damage @s $(damage) minecraft:arrow by @p[nbt={UUID: $(owner)}]
kill @s