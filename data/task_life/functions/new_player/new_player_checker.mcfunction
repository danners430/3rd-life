execute as @a run execute unless score @s tl_lives matches 0.. run function task_life:new_player/np_shuffle

schedule function task_life:new_player/new_player_checker 30s