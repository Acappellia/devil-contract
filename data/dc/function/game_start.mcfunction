effect give @a instant_health 1 9 true
effect give @a[tag=!dc_summon_skeleton] resistance 3 9 false
gamemode survival @s

#spreadplayers 0 0 100 1000 false @a

#worldborder center 0.0 0.0
#worldborder set 2000

time set 0
difficulty peaceful
difficulty hard

scoreboard players set @a dc_score 0

scoreboard players set #game_status dc 1

tellraw @a [{"text": "[Devil's Contract] Game Start"}]
title @a title [{"text": "游戏开始","color": "yellow"}]
execute as @a at @s run playsound entity.wither.spawn player @s ~ ~ ~ 1 0.8

scoreboard objectives setdisplay sidebar.team.white dc_score

execute as @a[tag=dc_summon_skeleton] at @s run function dc:private/player/summon_wither_skeleton_x5
schedule function dc:private/30s_tick 30s append
schedule function dc:private/1min_tick 60s append