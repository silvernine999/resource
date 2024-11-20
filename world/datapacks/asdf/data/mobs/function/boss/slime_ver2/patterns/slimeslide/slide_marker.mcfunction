summon marker ^7.5 ^ ^5 {Tags:["boss_summons","slide"],CustomName:'"slide1"'}
summon marker ^-7.5 ^ ^10 {Tags:["boss_summons","slide"],CustomName:'"slide2"'}
summon marker ^7.5 ^ ^15 {Tags:["boss_summons","slide"],CustomName:'"slide3"'}
summon marker ^-7.5 ^ ^20 {Tags:["boss_summons","slide"],CustomName:'"slide4"'}
summon marker ^ ^ ^30 {Tags:["boss_summons","slide"],CustomName:'"slide5"'}

execute facing entity @n[tag=boss_summons,name=slide1] eyes run function mobs:boss/warnbox/direction {x:4,y:8,dur:50}
execute at @n[tag=boss_summons,name=slide1] facing entity @n[tag=boss_summons,name=slide2] eyes run function mobs:boss/warnbox/direction {x:4,y:16,dur:50}
execute at @n[tag=boss_summons,name=slide2] facing entity @n[tag=boss_summons,name=slide3] eyes run function mobs:boss/warnbox/direction {x:4,y:16,dur:50}
execute at @n[tag=boss_summons,name=slide3] facing entity @n[tag=boss_summons,name=slide4] eyes run function mobs:boss/warnbox/direction {x:4,y:16,dur:50}
execute at @n[tag=boss_summons,name=slide4] facing entity @n[tag=boss_summons,name=slide5] eyes run function mobs:boss/warnbox/direction {x:4,y:12,dur:50}

scoreboard players set @e[tag=boss_summons,tag=slide] Lifetime 50