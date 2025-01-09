execute as @a unless score @s dc_pid matches 1.. run function dc:private/player/init

team join mob_friends @e[type=#dc:hostile,team=]

execute if score #game_status dc matches 2 run function dc:private/final_cd

schedule function dc:private/slow_tick 20t replace