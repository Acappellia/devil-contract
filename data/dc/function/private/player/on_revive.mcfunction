summon item_display ~ ~0.6 ~ {Tags:["dc_respawn_anchor"]}
gamemode spectator @s
ride @s mount @n[type=item_display,distance=..10,tag=dc_respawn_anchor]
effect give @s blindness infinite 0 true

#calc respawn time
scoreboard players set @s dc_respawn_cd -400
scoreboard players set #extra_respan_cd dc 200
scoreboard players operation #extra_respan_cd dc *= @s dc_death_counter
scoreboard players operation @s dc_respawn_cd -= #extra_respan_cd dc

#give back effects
execute as @s[tag=dc_mining_fatigue] run effect give @s mining_fatigue infinite 0 true
execute as @s[tag=dc_highlight] run effect give @s glowing infinite 0 true
execute as @s[tag=dc_regen] run effect give @s regeneration infinite 0 true