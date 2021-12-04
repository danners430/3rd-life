# Set worldborder
worldborder center ~ ~
worldborder set 700

# Add objectives
scoreboard objectives add 3rd_death deathCount
scoreboard objectives add 3rd_lives dummy
scoreboard objectives add started dummy
scoreboard players set @a started 0

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

# Shulker box
# execute in minecraft:overworld run function 3rd_life:shulker_box
# execute in minecraft:the_end run function 3rd_life:shulker_box
# execute in minecraft:the_nether run function 3rd_life:shulker_box
