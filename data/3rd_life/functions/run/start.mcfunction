execute store result score time calc run time query daytime
execute if score time calc matches 2001 run schedule function 3rd_life:task_management/daily_run 300s

gamerule doWeatherCycle true
execute unless score time calc matches 2001 run gamerule doDaylightCycle true

say The game has started