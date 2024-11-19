execute if score @s boss_summons_tick matches 26 run function mobs:boss/kingslime/patterns/projectile/shoot_projectiles
execute if score @s boss_summons_tick matches 26 run playsound minecraft:block.slime_block.hit hostile @a ~ ~ ~ 8 .5
execute if score @s boss_summons_tick matches 21 run function mobs:boss/kingslime/patterns/projectile/shoot_projectiles
execute if score @s boss_summons_tick matches 21 run playsound minecraft:block.slime_block.hit hostile @a ~ ~ ~ 8 .5
execute if score @s boss_summons_tick matches 16 run function mobs:boss/kingslime/patterns/projectile/shoot_projectiles
execute if score @s boss_summons_tick matches 16 run playsound minecraft:block.slime_block.hit hostile @a ~ ~ ~ 8 .5
execute if score @s boss_summons_tick matches 11 run function mobs:boss/kingslime/patterns/projectile/shoot_projectiles
execute if score @s boss_summons_tick matches 11 run playsound minecraft:block.slime_block.hit hostile @a ~ ~ ~ 8 .5
execute if score @s boss_summons_tick matches 6 run function mobs:boss/kingslime/patterns/projectile/shoot_projectiles
execute if score @s boss_summons_tick matches 6 run playsound minecraft:block.slime_block.hit hostile @a ~ ~ ~ 8 .5
execute if score @s boss_summons_tick matches 1 run function mobs:boss/kingslime/patterns/projectile/shoot_projectiles
execute if score @s boss_summons_tick matches 1 run playsound minecraft:block.slime_block.hit hostile @a ~ ~ ~ 8 .5

execute if score @s boss_summons_tick matches 25 run rotate @s ~22.5 ~
execute if score @s boss_summons_tick matches 20 run rotate @s ~22.5 ~
execute if score @s boss_summons_tick matches 15 run rotate @s ~22.5 ~
execute if score @s boss_summons_tick matches 10 run rotate @s ~22.5 ~
execute if score @s boss_summons_tick matches 5 run rotate @s ~22.5 ~

scoreboard players remove @s boss_summons_tick 1
kill @s[scores={boss_summons_tick=0}]