advancement revoke @s only dc:using_compass

execute if score @s dc_itemcd matches ..0 run return -1
scoreboard players set @s dc_itemcd -10

execute if score @s dc_compass_cd matches ..0 run return run function dc:private/compass/tell_cd
execute unless data entity @s SelectedItem.components."minecraft:custom_data".dc_compass run return -1
scoreboard players set @s dc_compass_cd -1200

playsound block.beacon.power_select player @s

setblock 0 -64 0 bedrock
setblock 0 -64 0 shulker_box{Items:[{Slot:0b,id:"compass",count:1,components:{"minecraft:use_cooldown":{cooldown_group:"dc_compass",seconds:90},"minecraft:custom_data":{dc_compass:1b},"minecraft:consumable":{animation:"none",consume_seconds:10000000,has_consume_particles:false,sound:"block.beacon.power_select"},"minecraft:lodestone_tracker":{target:{pos:[I;0,0,0],dimension:"minecraft:overworld"},tracked:false}}}]}
data modify block 0 -64 0 Items[0].components."minecraft:lodestone_tracker".target.pos set from entity @p[distance=0.1..,gamemode=!spectator] Pos

execute as @p[distance=0.1..,gamemode=!spectator] run function #bs.position:get_distance_ata {scale:1}
execute as @p[distance=0.1..,gamemode=!spectator] run tellraw @p[distance=..1] [{"text": "[寻人罗盘] 找到 ","color": "gray"},{"selector": "@s","color": "yellow"},{"text": " 的位置，距离 ","color": "gray"},{"score": {"name": "$position.get_distance_ata","objective": "bs.out"},"color": "yellow"},{"text": " 格","color": "gray"}]

item replace entity @s weapon.mainhand from block 0 -64 0 container.0
setblock 0 -64 0 bedrock