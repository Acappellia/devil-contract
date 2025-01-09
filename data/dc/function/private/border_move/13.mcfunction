tellraw @a [{"text": "[Devil's Contract] 游戏即将结束..."}]

execute as @a at @s run playsound minecraft:ambient.cave ambient @s ~ ~ ~ 1 1


scoreboard players set #game_status dc 2

bossbar set final_timer players @a
bossbar set final_timer visible true