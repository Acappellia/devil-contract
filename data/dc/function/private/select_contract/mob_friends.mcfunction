#return
execute unless entity @s[team=normal_player] run return run playsound block.note_block.didgeridoo player @s
execute if score @s dc_multiplier matches ..50 run return run playsound block.note_block.didgeridoo player @s

#change multiplier
scoreboard players remove @s dc_multiplier 50

#effect
team join mob_friends

#sound
playsound particle.soul_escape player @s ~ ~ ~ 1 1