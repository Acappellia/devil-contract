#return
execute if entity @s[tag=dc_summon_skeleton] run return run playsound block.note_block.didgeridoo player @s

#change multiplier
scoreboard players add @s dc_multiplier 5

#effect
tag @s add dc_summon_skeleton

#sound
playsound particle.soul_escape player @s ~ ~ ~ 1 1