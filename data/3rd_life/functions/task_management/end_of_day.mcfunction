gamerule doDaylightCycle false
schedule function 3rd_life:task_management/daily_run 300s

execute as @a[scores={3rd_daily=0}] run function 3rd_life:task_management/daily_success
execute as @a[scores={3rd_daily=1}] run function 3rd_life:task_management/daily_fail
title @a title {"text":"The day is complete","color":"light_green"}