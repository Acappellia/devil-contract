ride @s mount @n[type=item_display,distance=..10,tag=dc_respawn_anchor]

scoreboard players set #dc_time_to_show dc -1
scoreboard players operation #dc_time_to_show dc *= @s dc_respawn_cd
scoreboard players operation #dc_time_to_show dc /= #20 dc
scoreboard players add #dc_time_to_show dc 1

title @s actionbar [{"text": "等待复活中.. ","color": "white"},{"score": {"name": "#dc_time_to_show","objective": "dc"},"color": "yellow"},{"text": "s","color": "white"}]

execute unless score @s dc_respawn_cd matches -1.. run return -1

#spreadplayers ~ ~ 3 20 false @s
effect give @s resistance 3 9 false
scoreboard players set @s dc_survivetime 0
effect clear @s blindness
kill @n[type=item_display,distance=..10,tag=dc_respawn_anchor]
gamemode survival @s
execute at @s run playsound block.beacon.activate player @s