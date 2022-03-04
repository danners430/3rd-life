# Generate markers for 3-6 lives

summon marker ~ ~ ~ {data:{RandomNumber:3}, Tags:["NumberMarker"]}
summon marker ~ ~ ~ {data:{RandomNumber:4}, Tags:["NumberMarker"]}
summon marker ~ ~ ~ {data:{RandomNumber:5}, Tags:["NumberMarker"]}
summon marker ~ ~ ~ {data:{RandomNumber:6}, Tags:["NumberMarker"]}

# Randomly assign players a life count based on available markers

scoreboard players set @s 3rd_lives 0
execute as @s store result score @s 3rd_lives run data get entity @e[type=marker,tag=NumberMarker,sort=random,limit=1] data.RandomNumber

# Remove markers

kill @e[tag=NumberMarker]

# Tell people how many lives they have with the appropriate text colour

title @s[scores={3rd_lives=3}] title [{"text": "You have... "},{"score":{"name":"*","objective":"3rd_lives"},"bold":true,"color":"green"},{"text":" lives!","bold":true,"color":"dark_green"}]
title @s[scores={3rd_lives=4..}] title [{"text": "You have... "},{"score":{"name":"*","objective":"3rd_lives"},"bold":true,"color":"dark_green"},{"text":" lives!","bold":true,"color":"green"}]
# title @s[scores={3rd_lives=4..5}] title [{"score":{"name":"*","objective":"3rd_lives"},"bold":true,"color":"dark_green"},{"text":" lives!","bold":true,"color":"green"}]
# title @s[scores={3rd_lives=6..}] title [{"score":{"name":"*","objective":"3rd_lives"},"bold":true,"color":"gold"},{"text":" lives!","bold":true,"color":"gold"}]