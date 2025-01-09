advancement revoke @s only dc:kill_player

scoreboard players set #scores_to_add dc 5
scoreboard players operation #scores_to_add dc *= @s dc_multiplier
scoreboard players operation @s dc_score += #scores_to_add dc

playsound block.chain.break player @s ~ ~ ~ 1 2