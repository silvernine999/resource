item replace entity @s weapon.offhand from entity @s weapon.mainhand
$function weapons:$(weapontype)/$(weaponid)/replace

$execute unless score @s wskillcool matches 1.. run function weapons:$(weapontype)/$(weaponid)/skill/start