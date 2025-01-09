#return
execute if entity @s[tag=dc_regen] run return run playsound block.note_block.didgeridoo player @s
execute if score @s dc_multiplier matches ..5 run return run playsound block.note_block.didgeridoo player @s

#change multiplier
scoreboard players remove @s dc_multiplier 5

#effect
effect give @s regeneration infinite 0 true
tag @s add dc_regen

#sound
playsound particle.soul_escape player @s ~ ~ ~ 1 1