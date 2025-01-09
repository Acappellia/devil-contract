execute store result score @s dc_pid run scoreboard players add #pid dc 1
team join normal_player @s

attribute @s max_health modifier add dc_basehealth 20 add_value
effect give @s instant_health 1 9 true

execute if score #game_status dc matches 0 run effect give @s saturation infinite 0 true
execute if score #game_status dc matches 0 run effect give @s night_vision infinite 0 true
execute if score #game_status dc matches 0 run effect give @s resistance infinite 5 true

execute unless score @s dc_multiplier matches 0.. run scoreboard players set @s dc_multiplier 10
execute unless score @s dc_maxhealth matches -20.. run scoreboard players set @s dc_maxhealth 0
scoreboard players operation @s dc_+health = @s +health