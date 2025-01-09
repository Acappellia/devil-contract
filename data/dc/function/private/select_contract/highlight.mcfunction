#return
execute if entity @s[tag=dc_highlight] run return run playsound block.note_block.didgeridoo player @s

#change multiplier
scoreboard players add @s dc_multiplier 10

#effect
effect give @s glowing infinite 0 true
tag @s add dc_highlight

#sound
playsound particle.soul_escape player @s ~ ~ ~ 1 1