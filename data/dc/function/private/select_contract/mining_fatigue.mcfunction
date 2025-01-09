#return
execute if entity @s[tag=dc_mining_fatigue] run return run playsound block.note_block.didgeridoo player @s

#change multiplier
scoreboard players add @s dc_multiplier 5

#effect
effect give @s mining_fatigue infinite 0 true
tag @s add dc_mining_fatigue

#sound
playsound particle.soul_escape player @s ~ ~ ~ 1 1