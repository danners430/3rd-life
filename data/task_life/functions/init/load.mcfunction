# Add scoreboards

function task_life:init/scoreboards/handler

# Add teams

function task_life:init/teams

# Summon marker which will contain permanent scoreboards

execute unless entity @e[type=minecraft:marker,tag=Marker] run summon minecraft:marker ~ ~ ~ {Tags:["Marker"]}

# If the marker has the tl_started score, this means the game has been started already.
# If this score is not present, that means the datapack has been loaded for the first time, and a game is not yet in progress

# Stop day cycle

gamerule doDaylightCycle false

# If the game hasn't started yet, set the time to 8AM + 1 tick

execute unless score @e[type=minecraft:marker,tag=Marker,limit=1] tl_started matches 1 run time set 2001