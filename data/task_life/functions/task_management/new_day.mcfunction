# Reset time to 2000
time set 2000

# This has the effect of resetting the day counter, so increment this
scoreboard players add @e[type=minecraft:marker,tag=Marker] tl_days 1

# Put the day count into one of the calculation scoreboards so it can be manipulated
scoreboard players operation @e[type=minecraft:marker,tag=Marker] tl_calc = @e[type=minecraft:marker,tag=Marker] tl_days

# To get the modulus with an operator of 2, set the target score of the marker to 2 in advance
scoreboard players set @e[type=minecraft:marker,tag=Marker] tl_calc2 2

# Get the modulus of the day count
scoreboard players operation @e[type=minecraft:marker,tag=Marker] tl_calc %= @e[type=minecraft:marker,tag=Marker] tl_calc2

# If the result is 0, that means it's a daily task day. Set the "ready" score to 1.
execute if score @e[type=minecraft:marker,tag=Marker,limit=1] tl_calc matches 0 run scoreboard players set @e[type=minecraft:marker,tag=Marker,limit=1] tl_daily_ready 1

# If the result is not 0, that means the daily task day has finished. Set the "ready" score back to 0.
execute unless score @e[type=minecraft:marker,tag=Marker,limit=1] tl_calc matches 0 run scoreboard players set @e[type=minecraft:marker,tag=Marker,limit=1] tl_daily_ready 0