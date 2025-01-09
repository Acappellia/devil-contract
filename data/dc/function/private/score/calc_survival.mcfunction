execute unless score @s dc_survivetime matches 1200.. run return -1

scoreboard players set @s dc_survivetime 0
scoreboard players operation @s dc_score += @s dc_multiplier
scoreboard players operation #dc_all_score dc += @s dc_multiplier
execute if score #dc_all_score dc >= #score_per_trasure dc run function dc:private/score/check_global_score
 
playsound block.chain.break player @s ~ ~ ~ 1 2