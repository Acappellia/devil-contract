gamerule commandBlockOutput false
#gamerule sendCommandFeedback false

gamerule keepInventory true
difficulty hard

forceload add 0 0 0 0

scoreboard objectives add dc dummy
scoreboard players set #10 dc 10
scoreboard players set #20 dc 20
execute unless score #pid dc matches 0.. run scoreboard players set #pid dc 0
execute unless score #game_status dc matches 0.. run scoreboard players set #game_status dc 0

scoreboard objectives add dc_pid dummy
scoreboard objectives add dc_revive_time custom:time_since_death
scoreboard objectives add dc_+health dummy
scoreboard objectives add dc_immunetime custom:time_since_death
scoreboard objectives add dc_respawn_cd custom:time_since_death
scoreboard objectives add dc_itemcd custom:time_since_death

scoreboard objectives add dc_score dummy "积分"
scoreboard objectives add dc_multiplier dummy
scoreboard objectives add dc_maxhealth dummy
scoreboard objectives add dc_survivetime custom:time_since_death
scoreboard objectives add dc_compass_cd custom:time_since_death

scoreboard objectives add dc_death_counter deathCount

team add normal_player
team modify normal_player color white
team modify normal_player collisionRule always
team modify normal_player friendlyFire true
team modify normal_player nametagVisibility never
team modify normal_player seeFriendlyInvisibles false

team add mob_friends
team modify mob_friends color white
team modify mob_friends collisionRule always
team modify mob_friends friendlyFire true
team modify mob_friends nametagVisibility never
team modify mob_friends seeFriendlyInvisibles false

team add normal_player_hidescore
team modify normal_player_hidescore color gray
team modify normal_player_hidescore collisionRule always
team modify normal_player_hidescore friendlyFire true
team modify normal_player_hidescore nametagVisibility never
team modify normal_player_hidescore seeFriendlyInvisibles false

team add mob_friends_hidescore
team modify mob_friends_hidescore color gray
team modify mob_friends_hidescore collisionRule always
team modify mob_friends_hidescore friendlyFire true
team modify mob_friends_hidescore nametagVisibility never
team modify mob_friends_hidescore seeFriendlyInvisibles false

schedule function dc:private/slow_tick 20t append