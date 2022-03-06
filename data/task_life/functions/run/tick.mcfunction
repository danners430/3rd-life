# Run life tracking

function task_life:run/track_lives

# Run helmet checker

function task_life:run/check_helmet

# Run life gifting

function task_life:run/life_gifting

# Run task management

function task_life:task_management/task_manager

# Force enable trigger scores for anyone who doesn't yet have them

execute unless score * tl_gift matches 0.. run scoreboard players set @s tl_gift 0