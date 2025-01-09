scoreboard objectives add +health dummy
scoreboard objectives add +alt_health dummy

data modify block 17 -40 -18 front_text.messages[2] set value '[{"text": "","clickEvent": {"action": "run_command","value": "/function dc:game_start"}}]'