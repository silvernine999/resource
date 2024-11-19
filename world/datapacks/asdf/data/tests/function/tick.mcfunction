#function tests:backweapon_tick

execute as @e[tag=bounceball] at @s run function tests:bounceball/tick

execute as @e[tag=scatter_big] at @s run function tests:scatter/tick_big
execute as @e[tag=scatter_mid] at @s run function tests:scatter/tick_mid
execute as @e[tag=scatter_small] at @s run function tests:scatter/tick_small

execute as @e[tag=judgementcut] at @s run function tests:judgementcut/tick
execute as @e[tag=cut_linear] at @s run function tests:judgementcut/tick_cut_linear
execute as @e[tag=cut_spiral] at @s run function tests:judgementcut/tick_cut_spiral