execute store result bossbar final_timer value run scoreboard players remove #final_timer dc 1

scoreboard players operation #timer_min dc = #final_timer dc
scoreboard players operation #timer_sec dc = #final_timer dc

scoreboard players operation #timer_min dc /= #60 dc
scoreboard players operation #timer_sec dc %= #60 dc

execute store result storage dc:tmp timer.min int 1 run scoreboard players get #timer_min dc
execute store result storage dc:tmp timer.sec int 1 run scoreboard players get #timer_sec dc

function dc:private/timer_settitle with storage dc:tmp timer

execute unless score #final_timer dc matches 0 run return -1

effect give @a resistance infinite 9 true
effect give @a saturation infinite 0 true

effect give @a instant_health 1 9 true
difficulty peaceful

scoreboard players set @a[scores={dc_respawn_cd=..-1}] dc_respawn_cd -1

scoreboard players set #game_status dc 0

tellraw @a [{"text": "[Devil's Contract] Game Over"}]
title @a title [{"text": "游戏结束","color": "red"}]

execute as @a at @s run playsound entity.wither.death player @s ~ ~ ~ 0.5 0.8

schedule clear dc:private/30s_tick
schedule clear dc:private/1min_tick
schedule clear dc:private/border_move/1
schedule clear dc:private/border_move/2
schedule clear dc:private/border_move/3
schedule clear dc:private/border_move/4
schedule clear dc:private/border_move/5
schedule clear dc:private/border_move/6
schedule clear dc:private/border_move/7
schedule clear dc:private/border_move/8
schedule clear dc:private/border_move/9
schedule clear dc:private/border_move/10
schedule clear dc:private/border_move/11
schedule clear dc:private/border_move/12
schedule clear dc:private/border_move/13