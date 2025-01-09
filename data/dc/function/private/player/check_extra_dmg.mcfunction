execute if score @s dc_immunetime matches ..0 run return run scoreboard players operation @s dc_+health = @s +health
execute unless score @s +health < @s dc_+health run return run scoreboard players operation @s dc_+health = @s +health


execute if score @s +health matches ..6000 run return run damage @s 100 magic
scoreboard players operation @s +alt_health = @s +health
scoreboard players remove @s +alt_health 6000

scoreboard players set @s dc_immunetime -9