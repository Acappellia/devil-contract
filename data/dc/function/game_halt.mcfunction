effect give @a instant_health 1 9 true
difficulty peaceful
difficulty hard

scoreboard players set #game_status dc 0

tellraw @a "游戏中止"

scoreboard objectives setdisplay sidebar.team.white

schedule clear dc:private/30s_tick
schedule clear dc:private/1min_tick