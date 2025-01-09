#return
execute unless entity @s[team=normal_player] run return run playsound block.note_block.didgeridoo player @s

#change multiplier
scoreboard players add @s dc_multiplier 10

#effect
team join normal_player_hidescore

#sound
playsound particle.soul_escape player @s ~ ~ ~ 1 1