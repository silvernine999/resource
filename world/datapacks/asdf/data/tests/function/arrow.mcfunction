execute positioned 0.0 0.0 0.0 run summon marker ^ ^ ^5 {Tags:["skilldirection"]}
data modify storage test:arrow arrow.x set from entity @n[tag=skilldirection] Pos[0]
data modify storage test:arrow arrow.y set from entity @n[tag=skilldirection] Pos[1]
data modify storage test:arrow arrow.z set from entity @n[tag=skilldirection] Pos[2]
kill @e[tag=skilldirection]
execute anchored eyes run function tests:arrowspawn with storage test:arrow arrow
data remove storage test:arrow arrow