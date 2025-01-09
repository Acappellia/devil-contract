scoreboard players operation #multiplier_int dc = @s dc_multiplier
scoreboard players operation #multiplier_dec dc = @s dc_multiplier

scoreboard players operation #multiplier_int dc /= #10 dc
scoreboard players operation #multiplier_dec dc %= #10 dc

title @s actionbar [{"text": "当前积分倍率: ","color": "white"},{"text": "x","color": "yellow","italic": true},\
{"score": {"name": "#multiplier_int","objective": "dc"},"color": "#42ffb6","bold": true, "italic": true},\
{"text": ".","color": "white","bold": true,"italic": true},\
{"score": {"name": "#multiplier_dec","objective": "dc"},"color": "#42ffb6","bold": true, "italic": true}]