effect give @a resistance infinite 9 true
effect give @a saturation infinite 0 true

effect give @a instant_health 1 9 true

scoreboard players set @a[scores={dc_respawn_cd=..-1}] dc_respawn_cd -1

difficulty peaceful

scoreboard players set #game_status dc 0

tellraw @a "游戏中止"

clear @a compass
worldborder center 0.0 0.0
worldborder set 600

bossbar set final_timer visible false

scoreboard objectives setdisplay sidebar.team.white

schedule clear dc:private/30s_tick
schedule clear dc:private/1min_tick
schedule clear dc:private/border_move/1
schedule clear dc:private/border_move/2
schedule clear dc:private/border_move/3
schedule clear dc:private/border_move/4
schedule clear dc:private/border_move/5
schedule clear dc:private/border_move/6
schedule clear dc:private/border_move/7
schedule clear dc:private/border_move/8
schedule clear dc:private/border_move/9
schedule clear dc:private/border_move/10
schedule clear dc:private/border_move/11
schedule clear dc:private/border_move/12
schedule clear dc:private/border_move/13