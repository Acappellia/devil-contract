advancement revoke @s only dc:open_treasure

scoreboard players set #scores_to_add dc 2
scoreboard players operation #scores_to_add dc *= @s dc_multiplier
scoreboard players operation @s dc_score += #scores_to_add dc
scoreboard players operation #dc_all_score dc += #scores_to_add dc
execute if score #dc_all_score dc >= #score_per_trasure dc run function dc:private/score/check_global_score

playsound block.chain.break player @s ~ ~ ~ 1 2