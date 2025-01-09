#return
execute if score @s dc_multiplier matches ..4 run return run playsound block.note_block.didgeridoo player @s

#change multiplier
scoreboard players remove @s dc_multiplier 4

#effect
give @s[tag=!dc_enchanted] iron_helmet
give @s[tag=!dc_enchanted] iron_chestplate
give @s[tag=!dc_enchanted] iron_boots
give @s[tag=!dc_enchanted] iron_leggings

give @s[tag=dc_enchanted] iron_helmet[enchantments={protection:2,unbreaking:2}]
give @s[tag=dc_enchanted] iron_chestplate[enchantments={protection:2,unbreaking:2}]
give @s[tag=dc_enchanted] iron_boots[enchantments={protection:2,unbreaking:2}]
give @s[tag=dc_enchanted] iron_leggings[enchantments={protection:2,unbreaking:2}]

#sound
playsound block.copper_bulb.turn_on player @s ~ ~ ~ 1 1
playsound minecraft:entity.allay.item_taken player @s ~ ~ ~ 1 0.5
playsound particle.soul_escape player @s ~ ~ ~ 1 1