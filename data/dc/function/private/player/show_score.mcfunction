scoreboard players operation #multiplier_int dc = @s dc_multiplier
scoreboard players operation #multiplier_dec dc = @s dc_multiplier

scoreboard players operation #multiplier_int dc /= #10 dc
scoreboard players operation #multiplier_dec dc %= #10 dc

title @s actionbar [{"text": "当前积分: ","color": "white"},\
{"score": {"name": "@s","objective": "dc_score"},"color": "#ffd634","bold": true,"underlined": true},\
{"text": " (","color": "white","italic": true},\
{"text": "x","color": "yellow","italic": true},\
{"score": {"name": "#multiplier_int","objective": "dc"},"color": "#42ffb6","bold": true, "italic": true},\
{"text": ".","color": "white","bold": true,"italic": true},\
{"score": {"name": "#multiplier_dec","objective": "dc"},"color": "#42ffb6","bold": true, "italic": true},\
{"text": ")","color": "white","bold":false,"italic": true}]