execute store result score bossbarvisible sandbag run bossbar get minecraft:sandbag visible

#execute if score bossbarvisible sandbag matches 0 at @n[tag=sandbaghp] run data merge entity @n[type=text_display] {text:'{"bold":true,"color":"red","text":"체력바 OFF"}'}
execute if score bossbarvisible sandbag matches 0 run bossbar set minecraft:sandbag visible true

#execute if score bossbarvisible sandbag matches 1 at @n[tag=sandbaghp] run data merge entity @n[type=text_display] {text:'{"bold":true,"color":"green","text":"체력바 ON"}'}
execute if score bossbarvisible sandbag matches 1 run bossbar set minecraft:sandbag visible false

execute at @n[tag=sandbag_hp] run playsound minecraft:entity.experience_orb.pickup block @s ~ ~ ~

data remove entity @n[tag=sandbag_hp] interaction