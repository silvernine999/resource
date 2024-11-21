# 근접
# 커먼
execute as @s[tag=woodensword] run function weapons:melee/woodensword/skill/tick
# 언커먼
execute as @s[tag=halberd] run function weapons:melee/halberd/skill/tick
# 레어
execute as @s[tag=greatkatana] run function weapons:melee/greatkatana/skill/tick

# 마법
# 커먼
execute as @s[tag=woodenwand] run function weapons:magic/woodenwand/skill/tick
# 언커먼
execute as @s[tag=magicswords] run function weapons:magic/magicswords/skill/tick

# 원거리
# 커먼
execute as @s[tag=woodenbow] run function weapons:range/woodenbow/skill/tick
# 레어
execute as @s[tag=sniper] run function weapons:range/sniper/skill/tick
# 에픽
execute as @s[tag=dragonfang] run function weapons:range/dragonfang/skill/tick