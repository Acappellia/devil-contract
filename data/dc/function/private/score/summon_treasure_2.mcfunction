forceload add ~ ~ ~ ~

summon area_effect_cloud ~ ~ ~ {Tags:["treasure_pos"],Duration:2}
spreadplayers ~ ~ 0 3 false @n[type=area_effect_cloud,distance=..1,tag=treasure_pos]
execute at @n[type=area_effect_cloud,distance=..64,tag=treasure_pos] run setblock ~ ~ ~ chest{LootTable:"dc:treasure"}

forceload remove ~ ~ ~ ~