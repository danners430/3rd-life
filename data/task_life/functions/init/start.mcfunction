# mark game as started

<<<<<<< HEAD
scoreboard players set @a 3rd_started 1

# initialize death score
scoreboard players set @a 3rd_death 0
=======
scoreboard players set @a tl_started 1

# initialize death score
scoreboard players set @a tl_death 0
>>>>>>> 1d5d0e2d0e6da6a4314106fef8ed2e1f00b4a82e

# Begin game sequence
title @a title {"text":"The game is beginning","bold":true,"color":"green"}

# Schedule delayed functions

<<<<<<< HEAD
schedule function 3rd_life:init/start_3 4s
schedule function 3rd_life:init/start_2 6s
schedule function 3rd_life:init/start_1 8s
schedule function 3rd_life:init/start_run 10s
schedule function 3rd_life:init/start_shuffle 13s

gamerule doDaylightCycle true
=======
schedule function task_life:init/start_3 4s
schedule function task_life:init/start_2 6s
schedule function task_life:init/start_1 8s
schedule function task_life:init/start_run 10s
schedule function task_life:init/start_shuffle 13s

# Set the time to 2001 ticks and schedule the day to begin in 5 minutes

time set 2001
schedule function task_life:task_management/daily_run 300s

# Start weather

>>>>>>> 1d5d0e2d0e6da6a4314106fef8ed2e1f00b4a82e
gamerule doWeatherCycle true