<<<<<<< HEAD
gamerule doWeatherCycle true
gamerule doDaylightCycle true
=======
execute store result score time calc run time query daytime
execute if score time calc matches 2001 run schedule function task_life:task_management/daily_run 300s

gamerule doWeatherCycle true
execute unless score time calc matches 2001 run gamerule doDaylightCycle true
>>>>>>> 1d5d0e2d0e6da6a4314106fef8ed2e1f00b4a82e

say The game has started