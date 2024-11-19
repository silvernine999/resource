$summon minecraft:marker ~ ~ ~ {Tags:["projectile", "magicswords", "temp_loader_projectile"], data:{function: "magic/magicswords/projectile/tick", hoverpos: $(hoverpos)}}
summon item_display ~ ~ ~ {Tags:["projectile_display", "temp_loader_display"], teleport_duration:2, transformation:{right_rotation:[0.2706f,0.6533f,0.2706f,0.6533f],left_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1f,1f,1f]},item:{id:"minecraft:iron_sword",count:1,components:{enchantment_glint_override:true}}}
data modify entity @n[tag=temp_loader_projectile] data.owner set from entity @s UUID
data modify entity @n[tag=temp_loader_projectile] data.display set from entity @n[tag=temp_loader_display] UUID
execute store result entity @n[tag=temp_loader_projectile] data.damage float 0.0001 run function weapons:magic/get_magic_damage
scoreboard players set @n[tag=temp_loader_projectile] projectiletick 80
tag @e[tag=temp_loader_projectile] remove temp_loader_projectile
tag @e[tag=temp_loader_display] remove temp_loader_display
playsound minecraft:block.enchantment_table.use player @s ^ ^ ^3 1 1.5