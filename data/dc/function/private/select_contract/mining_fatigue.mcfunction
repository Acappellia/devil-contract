#return
execute if entity @s[tag=dc_mining_fatigue] run return run playsound block.note_block.didgeridoo player @s

#change multiplier
scoreboard players add @s dc_multiplier 5

#effect
effect give @s mining_fatigue infinite 0 true
tag @s add dc_mining_fatigue

#sound
playsound block.copper_bulb.turn_on player @s ~ ~ ~ 1 1
playsound minecraft:entity.allay.item_taken player @s ~ ~ ~ 1 0.5
playsound particle.soul_escape player @s ~ ~ ~ 1 1