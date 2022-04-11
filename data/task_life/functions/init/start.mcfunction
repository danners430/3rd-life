# initialize death score

scoreboard players set @a tl_death 0

# Begin game sequence

title @a title {"text":"The game is beginning","bold":true,"color":"green"}

# Schedule delayed functions

schedule function task_life:init/start_3 4s
schedule function task_life:init/start_2 6s
schedule function task_life:init/start_1 8s
schedule function task_life:init/start_run 10s
schedule function task_life:init/start_shuffle 13s

# Set the time to 2201 ticks

time set 2201

# Start weather and daylight cycle

gamerule doWeatherCycle true
gamerule doDaylightCycle true

# Give everyone a daily task cooldown

scoreboard players set @a tl_DailyCooldown 1

# Enable scoreboards

scoreboard players set @a tl_gift 0
scoreboard players set @a tl_DailyTask 0
scoreboard players set @a tl_PersistentTask 0
scoreboard players set @a tl_daily 0
scoreboard players set @a tl_persistent 0
scoreboard players set @a tl_helmet 0
scoreboard players set @a tl_HasDaily 0

# Start checking for new players

schedule function task_life:new_player/new_player_checker 30s