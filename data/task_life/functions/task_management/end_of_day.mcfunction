# Send players who have completed their daily tasks to the success function, and those who haven't to the failure function

execute as @a[scores={tl_daily=0,tl_lives=2..}] run function task_life:task_management/daily_success
execute as @a[scores={tl_daily=1,tl_lives=2..}] run function task_life:task_management/daily_fail

# Show title with subtitles from daily functions

title @a title {"text":"The day is complete","color":"light_green"}

# Reset daily task score

scoreboard players set @a tl_daily 0
scoreboard players set @s tl_HasDaily 0