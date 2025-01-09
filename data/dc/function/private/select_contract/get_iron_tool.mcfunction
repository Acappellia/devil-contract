#return
execute if score @s dc_multiplier matches ..4 run return run playsound block.note_block.didgeridoo player @s

#change multiplier
scoreboard players remove @s dc_multiplier 4

#effect
give @s[tag=!dc_enchanted] iron_axe
give @s[tag=!dc_enchanted] iron_pickaxe
give @s[tag=!dc_enchanted] iron_shovel
give @s[tag=!dc_enchanted] iron_hoe

give @s[tag=dc_enchanted] iron_axe[enchantments={efficiency:2,unbreaking:2}]
give @s[tag=dc_enchanted] iron_pickaxe[enchantments={efficiency:2,unbreaking:2}]
give @s[tag=dc_enchanted] iron_shovel[enchantments={efficiency:2,unbreaking:2}]
give @s[tag=dc_enchanted] iron_hoe[enchantments={efficiency:2,unbreaking:2}]

#sound
playsound particle.soul_escape player @s ~ ~ ~ 1 1