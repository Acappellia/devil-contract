execute as @a[scores={dc_revive_time=1}] run function dc:private/player/on_revive

execute as @a[tag=dc_no_sprint] if predicate dc:is_sprinting run effect give @s blindness 1 0 true

execute as @a[tag=dc_take_extra_dmg] run function dc:private/player/check_extra_dmg

execute if score #game_status dc matches 0 as @a run function dc:private/player/show_multiplier
execute if score #game_status dc matches 1 as @a run function dc:private/player/show_score
execute if score #game_status dc matches 1 as @a run function dc:private/score/calc_survival