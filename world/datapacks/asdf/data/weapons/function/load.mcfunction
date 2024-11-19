scoreboard objectives add constant dummy
scoreboard players set ticktosec constant 20
scoreboard players set ticktosec_frac constant 2

scoreboard objectives add temporary dummy

scoreboard objectives add wskillcool dummy
scoreboard objectives add wskillcool_int dummy
scoreboard objectives add wskillcool_frac dummy
scoreboard objectives add wskilltick dummy
scoreboard objectives add wskillstat dummy

scoreboard objectives add autokilll dummy

scoreboard objectives add projectiletick dummy
scoreboard objectives add arrow_damage dummy

scoreboard objectives add damagecheck minecraft.custom:minecraft.damage_taken
scoreboard objectives add damagecheck_absorb minecraft.custom:minecraft.damage_absorbed

tellraw @a "-무기 로드됨"