execute store result score @s dc_pid run scoreboard players add #pid dc 1
team join normal_player @s

execute unless score @s dc_multiplier matches 0.. run scoreboard players set @s dc_multiplier 10
execute unless score @s dc_maxhealth matches -20.. run scoreboard players set @s dc_maxhealth 0
scoreboard players operation @s dc_+health = @s +health