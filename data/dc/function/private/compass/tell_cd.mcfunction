playsound block.copper_bulb.turn_off player @s

scoreboard players set #dc_compass_cd dc -1
scoreboard players operation #dc_compass_cd dc *= @s dc_compass_cd
scoreboard players operation #dc_compass_cd dc /= #20 dc
scoreboard players add #dc_compass_cd dc 1

tellraw @s [{"text": "[寻人罗盘] 冷却剩余 ","color": "gray"},{"score": {"name": "#dc_compass_cd","objective": "dc"},"color": "white"},{"text": "s","color": "gray"}]