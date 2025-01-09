#return
execute if score @s dc_multiplier matches ..4 run return run playsound block.note_block.didgeridoo player @s

#change multiplier
scoreboard players remove @s dc_multiplier 4

#effect
give @s[tag=!dc_enchanted] shield

give @s[tag=dc_enchanted] shield[enchantments={unbreaking:2}]

#sound
playsound particle.soul_escape player @s ~ ~ ~ 1 1