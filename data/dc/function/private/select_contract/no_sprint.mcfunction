#return
execute if entity @s[tag=dc_no_sprint] run return run playsound block.note_block.didgeridoo player @s

#change multiplier
scoreboard players add @s dc_multiplier 10

#effect
tag @s add dc_no_sprint

#sound
playsound particle.soul_escape player @s ~ ~ ~ 1 1