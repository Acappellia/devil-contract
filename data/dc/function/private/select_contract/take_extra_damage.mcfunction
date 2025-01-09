#return
execute if entity @s[tag=dc_take_extra_dmg] run return run playsound block.note_block.didgeridoo player @s

#change multiplier
scoreboard players add @s dc_multiplier 20

#effect
tag @s add dc_take_extra_dmg

#sound
playsound particle.soul_escape player @s ~ ~ ~ 1 1