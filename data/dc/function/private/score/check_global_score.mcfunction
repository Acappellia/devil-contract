scoreboard players operation #dc_all_score dc -= #score_per_trasure dc

execute store result storage dc:tmp random_pos.x int 1 run random value -150..150
execute store result storage dc:tmp random_pos.z int 1 run random value -150..150

function dc:private/score/summon_treasure with storage dc:tmp random_pos

tellraw @a [{"text": "[Devil's Contract] 一个新的祝福宝箱出现在地表.. "}]

execute if score #dc_all_score dc >= #score_per_trasure dc run function dc:private/score/check_global_score