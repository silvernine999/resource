execute at An_Lis run tp @n[tag=backweapon] ~ ~ ~ ~ 0
execute if data entity An_Lis {SelectedItemSlot:0} run data modify entity @n[tag=backweapon] item.id set value air
execute unless data entity An_Lis {SelectedItemSlot:0} run data modify entity @n[tag=backweapon] item set from entity An_Lis Inventory[{Slot:0b}]