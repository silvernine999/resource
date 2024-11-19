$summon item_display ~ ~ ~ {Tags:["warn","temp_loader_warnbox"],transformation:{left_rotation:[0.707,0.0,0.0,0.707],translation:[0.0,0.0,0.0],right_rotation:[0.0,0.0,0.0,1.0],scale:[$(x)f,$(y)f,1f]},item:{id:"red_stained_glass_pane",components:{"custom_model_data":2}}}
rotate @n[tag=temp_loader_warnbox] ~ 0
$scoreboard players set @n[tag=temp_loader_warnbox] Lifetime $(dur)
tag @n[tag=temp_loader_warnbox] remove temp_loader_warnbox