$execute if data entity @p[nbt={UUID:$(Thrower)}] SelectedItem run item replace entity @p[nbt={UUID:$(Thrower)}] player.cursor from entity @s container.0
$execute unless data entity @p[nbt={UUID:$(Thrower)}] SelectedItem run item replace entity @p[nbt={UUID:$(Thrower)}] weapon.mainhand from entity @s container.0
kill @s