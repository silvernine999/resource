effect give @a saturation infinite 255 true

kill @e[type=experience_orb]

scoreboard players remove @e[scores={Lifetime=1..}] Lifetime 1
kill @e[scores={Lifetime=0}]