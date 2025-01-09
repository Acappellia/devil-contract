tag @s remove dc_enchanted
tag @s remove dc_fall_immune
tag @s remove dc_highlight
tag @s remove dc_mining_fatigue
tag @s remove dc_no_sprint
tag @s remove dc_regen
tag @s remove dc_summon_creeper
tag @s remove dc_summon_skeleton
tag @s remove dc_take_extra_dmg
tag @s remove dc_take_period_dmg
tag @s remove dc_weakness

attribute @s minecraft:attack_damage modifier remove dc_mod
attribute @s minecraft:max_health modifier remove dc_mod
attribute @s minecraft:fall_damage_multiplier modifier remove dc_mod

scoreboard players set @s dc_maxhealth 0

team join normal_player

clear @s
effect clear @s mining_fatigue
effect clear @s glowing
effect clear @s regeneration
execute if score #game_status dc matches 0 run effect give @s saturation infinite 0 true
execute if score #game_status dc matches 0 run effect give @s night_vision infinite 0 true
execute if score #game_status dc matches 0 run effect give @s resistance infinite 5 true
effect give @s instant_health 1 9 true

scoreboard players set @s dc_multiplier 10