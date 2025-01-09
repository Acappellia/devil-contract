#return
execute if entity @s[tag=dc_weakness] run return run playsound block.note_block.didgeridoo player @s

#change multiplier
scoreboard players add @s dc_multiplier 3

#effect
attribute @s attack_damage modifier add dc_mod -0.5 add_multiplied_base
tag @s add dc_weakness

#sound
playsound particle.soul_escape player @s ~ ~ ~ 1 1