$damage @s $(damage) player_attack by @p[nbt={UUID: $(owner)}]
execute at @s run particle crit ~ ~1 ~ 0 0 0 1 5
execute at @s run particle sweep_attack ~ ~1 ~
playsound block.glass.break player @a ~ ~ ~ 1 1.5