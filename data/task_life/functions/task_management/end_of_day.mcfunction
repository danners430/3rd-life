# stop daylight cycle and advance time 1 tick to prevent infinite loop

gamerule doDaylightCycle false
time set 2001

# Schedule next day to start in 5 minutes

schedule function task_life:task_management/daily_run 300s

# Send players who have completed their daily tasks to the success function, and those who haven't to the failure function

execute as @a[scores={tl_daily=0}] run function task_life:task_management/daily_success
execute as @a[scores={tl_daily=1}] run function task_life:task_management/daily_fail

# Show title with subtitles from daily functions

title @a title {"text":"The day is complete","color":"light_green"}

# Reset daily task score

scoreboard players set @a tl_daily 0