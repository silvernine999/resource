$execute if score @s projectiletick matches 41.. if data entity @s {data:{hoverpos:0}} at @p[nbt={UUID:$(owner)}] rotated ~ 0 run tp @s ^$(hoverpos) ^2.5 ^-.5 ~ -90
$execute if score @s projectiletick matches 41.. unless data entity @s {data:{hoverpos:0}} at @p[nbt={UUID:$(owner)}] rotated ~ 0 run tp @s ^$(hoverpos) ^2 ^-.5 ~ -90
$execute if score @s projectiletick matches ..40 if data entity @s {data:{hoverpos:0}} at @p[nbt={UUID:$(owner)}] rotated ~ 0 run tp @s ^$(hoverpos) ^2.5 ^-.5 ~ ~
$execute if score @s projectiletick matches ..40 unless data entity @s {data:{hoverpos:0}} at @p[nbt={UUID:$(owner)}] rotated ~ 0 run tp @s ^$(hoverpos) ^2 ^-.5 ~ ~