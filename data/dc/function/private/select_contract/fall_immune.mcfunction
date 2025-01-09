#return
execute if entity @s[tag=dc_fall_immune] run return run playsound block.note_block.didgeridoo player @s
execute if score @s dc_multiplier matches ..5 run return run playsound block.note_block.didgeridoo player @s

#change multiplier
scoreboard players remove @s dc_multiplier 5

#effect
attribute @s fall_damage_multiplier modifier add dc_mod -1 add_multiplied_base
tag @s add dc_fall_immune

#sound
playsound block.copper_bulb.turn_on player @s ~ ~ ~ 1 1
playsound minecraft:entity.allay.item_taken player @s ~ ~ ~ 1 0.5
playsound particle.soul_escape player @s ~ ~ ~ 1 1