#return
execute unless entity @s[team=normal_player] run return run playsound block.note_block.didgeridoo player @s
execute if score @s dc_multiplier matches ..50 run return run playsound block.note_block.didgeridoo player @s

#change multiplier
scoreboard players remove @s dc_multiplier 50

#effect
team join mob_friends

#sound
playsound block.copper_bulb.turn_on player @s ~ ~ ~ 1 1
playsound minecraft:entity.allay.item_taken player @s ~ ~ ~ 1 0.5
playsound particle.soul_escape player @s ~ ~ ~ 1 1