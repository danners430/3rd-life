# stop daylight cycle and advance time 1 tick to prevent infinite loop

gamerule doDaylightCycle false
time set 2001

# Schedule next day to start in 5 minutes

schedule function 3rd_life:task_management/daily_run 300s

# Send players who have completed their daily tasks to the success function, and those who haven't to the failure function

execute as @a[scores={3rd_daily=0}] run function 3rd_life:task_management/daily_success
execute as @a[scores={3rd_daily=1}] run function 3rd_life:task_management/daily_fail

# Show title with subtitles from daily functions

title @a title {"text":"The day is complete","color":"light_green"}

# Reset daily task score

scoreboard players set @a 3rd_daily 0