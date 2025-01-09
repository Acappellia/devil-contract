execute unless score @s dc_survivetime matches 1200.. run return -1

scoreboard players set @s dc_survivetime 0
scoreboard players operation @s dc_score += @s dc_multiplier

playsound block.chain.break player @s ~ ~ ~ 1 2