scoreboard players operation @s wskillcool_int = @s wskillcool
scoreboard players operation @s wskillcool_int /= ticktosec constant

scoreboard players operation @s wskillcool_frac = @s wskillcool
scoreboard players operation @s wskillcool_frac %= ticktosec constant
scoreboard players operation @s wskillcool_frac /= ticktosec_frac constant

title @s actionbar [{"color":"gold","text":"무기 쿨타임 "},{"score":{"name":"@s","objective":"wskillcool_int"}},".",{"score":{"name":"@s","objective":"wskillcool_frac"}},"초 남음"]