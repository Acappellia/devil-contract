#return if no multiplier
execute if score @s dc_multiplier matches ..2 run return run playsound block.note_block.didgeridoo player @s

#change multiplier
scoreboard players remove @s dc_multiplier 2

#effect
execute store result storage dc:tmp health.value int 1 run scoreboard players add @s dc_maxhealth 2
function dc:private/player/set_health_attribute with storage dc:tmp health

#sound
playsound particle.soul_escape player @s ~ ~ ~ 1 1