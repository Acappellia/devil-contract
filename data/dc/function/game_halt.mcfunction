effect give @a instant_health 1 9 true
difficulty peaceful
difficulty hard

scoreboard players set #game_status dc 0

tellraw @a "游戏中止"

clear @a compass
worldborder center 0.0 0.0
worldborder set 600

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