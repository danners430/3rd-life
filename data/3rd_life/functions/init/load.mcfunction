# Set worldborder
worldborder center ~ ~
worldborder set 700

# Add objectives
scoreboard objectives add 3rd_death deathCount
scoreboard objectives add 3rd_lives dummy
scoreboard objectives add 3rd_gift trigger
scoreboard objectives add started dummy
scoreboard objectives add helmet dummy
scoreboard players set @a started 0
scoreboard players set @a helmet 0

# Add teams
# team add 3rd_full
# team modify 3rd_full color gold
team add 3rd_extra
team modify 3rd_extra color dark_green
team add 3rd_green
team modify 3rd_green color green
team add 3rd_yellow
team modify 3rd_yellow color yellow
team add 3rd_red
team modify 3rd_red color red
team add 3rd_died
team modify 3rd_died prefix ["",{"text": "["},{"text": "DIED","color": "gray"},{"text": "] "}]