tellraw @a [{"text": "[Devil's Contract] 地图正在收束"}]

execute as @a at @s run playsound minecraft:ambient.cave ambient @s ~ ~ ~ 1 1

worldborder set 240 30

schedule function dc:private/border_move/7 115s replace