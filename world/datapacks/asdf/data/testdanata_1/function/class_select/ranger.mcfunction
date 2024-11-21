clear @s

function weapons:range/woodenbow/give
item replace entity @s hotbar.8 with arrow
item replace entity @s armor.head with leather_helmet[unbreakable={}]
item replace entity @s armor.chest with leather_chestplate[unbreakable={}]
item replace entity @s armor.legs with leather_leggings[unbreakable={}]
item replace entity @s armor.feet with leather_boots[unbreakable={}]
give @s golden_apple 64

data remove entity @n[tag=select_ranger] interaction