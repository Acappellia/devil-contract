title @a title [{"text": "天灾开始蔓延","color": "yellow"}]
title @a subtitle [{"text": "活动范围开始收缩","color": "white"}]

tellraw @a [{"text": "[Devil's Contract] 地图正在收束"}]

execute as @a at @s run playsound minecraft:ambient.cave ambient @s ~ ~ ~ 1 1

worldborder set 540 30

schedule function dc:private/border_move/2 125s replace