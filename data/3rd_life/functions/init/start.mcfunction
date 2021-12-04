# mark game as started

scoreboard players set @a started 1
summon marker ~ ~ ~ {data:{Started:1}, Tags:["StartMarker"]}

# initialize death score
scoreboard players set @a 3rd_death 0

# Begin game sequence
title @a title {"text":"The game is beginning","bold":true,"color":"green"}

# Schedule delayed functions

schedule function 3rd_life:init/start_3 4s
schedule function 3rd_life:init/start_2 6s
schedule function 3rd_life:init/start_1 8s
schedule function 3rd_life:init/start_run 10s
schedule function 3rd_life:init/start_shuffle 12s