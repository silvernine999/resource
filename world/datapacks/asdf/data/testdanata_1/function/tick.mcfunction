execute as @e[type=item] if data entity @s Thrower run function testdanata_1:blockthrow with entity @s

execute as @e[tag=select_swordman] on target run function testdanata_1:class_select/swordman
execute as @e[tag=select_ranger] on target run function testdanata_1:class_select/ranger
execute as @e[tag=select_mage] on target run function testdanata_1:class_select/mage

execute as @e[tag=tp_danta] on target run function testdanata_1:bossroom