execute as @a unless score @s dc_pid matches 1.. run function dc:private/player/init

team join mob_friends @e[type=#dc:hostile,team=]

schedule function dc:private/slow_tick 20t replace