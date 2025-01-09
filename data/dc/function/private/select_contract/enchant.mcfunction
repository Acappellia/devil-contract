#return
execute if entity @s[tag=dc_enchanted] run return run playsound block.note_block.didgeridoo player @s
execute if score @s dc_multiplier matches ..20 run return run playsound block.note_block.didgeridoo player @s

#change multiplier
scoreboard players remove @s dc_multiplier 20

#effect
tag @s add dc_enchanted
item modify entity @s armor.head dc:enchant
item modify entity @s armor.chest dc:enchant
item modify entity @s armor.legs dc:enchant
item modify entity @s armor.feet dc:enchant

item modify entity @s hotbar.0 dc:enchant
item modify entity @s hotbar.1 dc:enchant
item modify entity @s hotbar.2 dc:enchant
item modify entity @s hotbar.3 dc:enchant
item modify entity @s hotbar.4 dc:enchant
item modify entity @s hotbar.5 dc:enchant
item modify entity @s hotbar.6 dc:enchant
item modify entity @s hotbar.7 dc:enchant
item modify entity @s hotbar.8 dc:enchant

item modify entity @s inventory.0 dc:enchant
item modify entity @s inventory.1 dc:enchant
item modify entity @s inventory.2 dc:enchant
item modify entity @s inventory.3 dc:enchant
item modify entity @s inventory.4 dc:enchant
item modify entity @s inventory.5 dc:enchant
item modify entity @s inventory.6 dc:enchant
item modify entity @s inventory.7 dc:enchant
item modify entity @s inventory.8 dc:enchant
item modify entity @s inventory.9 dc:enchant
item modify entity @s inventory.10 dc:enchant
item modify entity @s inventory.11 dc:enchant
item modify entity @s inventory.12 dc:enchant
item modify entity @s inventory.13 dc:enchant
item modify entity @s inventory.14 dc:enchant
item modify entity @s inventory.15 dc:enchant
item modify entity @s inventory.16 dc:enchant
item modify entity @s inventory.17 dc:enchant
item modify entity @s inventory.18 dc:enchant
item modify entity @s inventory.19 dc:enchant
item modify entity @s inventory.20 dc:enchant
item modify entity @s inventory.21 dc:enchant
item modify entity @s inventory.22 dc:enchant
item modify entity @s inventory.23 dc:enchant
item modify entity @s inventory.24 dc:enchant
item modify entity @s inventory.25 dc:enchant
item modify entity @s inventory.26 dc:enchant

item modify entity @s weapon.offhand dc:enchant

execute store result score #clear_shields dc run clear @s shield 0
clear @s shield
execute if score #clear_shields dc matches 1 run give @s shield[enchantments={unbreaking:2}]
execute if score #clear_shields dc matches 2 run give @s shield[enchantments={unbreaking:2}] 2
execute if score #clear_shields dc matches 3 run give @s shield[enchantments={unbreaking:2}] 3
execute if score #clear_shields dc matches 4 run give @s shield[enchantments={unbreaking:2}] 4
execute if score #clear_shields dc matches 5 run give @s shield[enchantments={unbreaking:2}] 5
execute if score #clear_shields dc matches 6.. run give @s shield[enchantments={unbreaking:2}] 6

#sound
playsound block.copper_bulb.turn_on player @s ~ ~ ~ 1 1
playsound minecraft:entity.allay.item_taken player @s ~ ~ ~ 1 0.5
playsound particle.soul_escape player @s ~ ~ ~ 1 1