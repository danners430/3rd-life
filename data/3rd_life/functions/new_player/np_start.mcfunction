# mark game as started

scoreboard players set @a started 1

# initialize death score
scoreboard players set @a 3rd_death 0

# Begin game sequence
title @s title {"text":"The game is beginning","bold":true,"color":"green"}

# Schedule delayed functions

execute as @s run schedule function 3rd_life:init/start_3 4s
execute as @s run schedule function 3rd_life:init/start_2 6s
execute as @s run schedule function 3rd_life:init/start_1 8s
execute as @s run schedule function 3rd_life:init/start_run 10s
execute as @s run schedule function 3rd_life:init/start_shuffle 13s