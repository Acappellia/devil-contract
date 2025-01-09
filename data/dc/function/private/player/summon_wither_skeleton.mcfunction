scoreboard players add #cmd_limit_return dc 1
execute if score #cmd_limit_return dc matches 100 run return -1

summon wither_skeleton ~ ~-3 ~ {Tags:["new_summon"],HandItems:[{id:"stone_sword",count:1},{}]}
spreadplayers ~ ~ 7 15 false @n[type=wither_skeleton,tag=new_summon,distance=..5]
tp @e[type=wither_skeleton,tag=new_summon,distance=..5] ~ -100 ~
execute unless entity @n[type=wither_skeleton,tag=new_summon,distance=..20] run return run function dc:private/player/summon_wither_skeleton
team join mob_friends @n[type=wither_skeleton,tag=new_summon,distance=..20]
tag @n[type=wither_skeleton,tag=new_summon,distance=..20] remove new_summon