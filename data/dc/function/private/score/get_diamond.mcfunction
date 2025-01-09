advancement revoke @s only dc:get_diamond

execute store result score #diamonds_get dc store result storage dc:tmp diamond.count int 1 run clear @s diamond[rarity="common"]
function dc:private/score/give_back_diamond with storage dc:tmp diamond

scoreboard players operation #diamonds_get dc *= @s dc_multiplier
scoreboard players operation @s dc_score += #diamonds_get dc

playsound block.chain.break player @s ~ ~ ~ 1 2