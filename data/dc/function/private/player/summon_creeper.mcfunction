scoreboard players add #cmd_limit_return dc 1
execute if score #cmd_limit_return dc matches 10 run return -1

summon creeper ~ ~-3 ~ {Tags:["new_summon","power"],powered:1b}

execute store result score #player_height dc run data get entity @s Pos[1]
execute store result storage dc:tmp playery.value int 1 run scoreboard players add #player_height dc 5
function dc:private/player/spread_creeper with storage dc:tmp playery
tp @n[type=creeper,tag=new_summon,distance=..5] ~ -100 ~
execute unless entity @n[type=creeper,tag=new_summon,distance=..15] run return run function dc:private/player/summon_creeper
team join mob_friends @n[type=creeper,tag=new_summon,distance=..15]
tag @n[type=creeper,tag=new_summon,distance=..15] remove new_summon