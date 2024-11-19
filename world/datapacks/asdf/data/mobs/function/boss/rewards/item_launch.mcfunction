execute store result storage temp item.x double 0.01 run random value -30..30
execute store result storage temp item.y double 0.01 run random value 50..100
execute store result storage temp item.z double 0.01 run random value -30..30
execute store result storage temp item.age int 1 run random value 5940..5950
$data modify storage temp item.id set value $(item)
function mobs:boss/rewards/item_spawn with storage temp item