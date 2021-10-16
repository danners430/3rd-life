#---------------------------------------------------------
# This Datapack was made by Barra Ihsan
# Please do not copy or credit this as your own work!
# Youtube: youtube.com/barraIhsan
# Github: github.com/barraIhsan
#---------------------------------------------------------

# Set worldborder
worldborder center ~ ~
worldborder set 700

# Add scoreboard
scoreboard objectives add 3rd_death deathCount

# Add team
team add 3rd_first
team modify 3rd_first color green
team add 3rd_second
team modify 3rd_second color yellow
team add 3rd_third
team modify 3rd_third color red
team add 3rd_died
team modify 3rd_died prefix ["",{"text": "["},{"text": "DIED","color": "gray"},{"text": "] "}]

## Shulker box
execute in minecraft:overworld run function 3rd_life:shulker_box
execute in minecraft:the_end run function 3rd_life:shulker_box
execute in minecraft:the_nether run function 3rd_life:shulker_box
