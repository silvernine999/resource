clear @s

function weapons:magic/woodenwand/give
item replace entity @s weapon.offhand with shield[unbreakable={}]
item replace entity @s armor.head with leather_helmet[unbreakable={}]
item replace entity @s armor.chest with leather_chestplate[unbreakable={}]
item replace entity @s armor.legs with leather_leggings[unbreakable={}]
item replace entity @s armor.feet with leather_boots[unbreakable={}]

data remove entity @n[tag=select_mage] interaction