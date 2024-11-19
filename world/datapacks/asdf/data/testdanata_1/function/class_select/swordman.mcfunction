clear @s

function weapons:melee/woodensword/give
item replace entity @s weapon.offhand with shield[unbreakable={}]
item replace entity @s armor.head with chainmail_helmet[unbreakable={}]
item replace entity @s armor.chest with chainmail_chestplate[unbreakable={}]
item replace entity @s armor.legs with chainmail_leggings[unbreakable={}]
item replace entity @s armor.feet with chainmail_boots[unbreakable={}]

data remove entity @n[tag=select_swordman] interaction