# Generate markers for 3-6 lives

summon marker ~ ~ ~ {data:{RandomNumber:3}, Tags:["NumberMarker"]}
summon marker ~ ~ ~ {data:{RandomNumber:4}, Tags:["NumberMarker"]}
summon marker ~ ~ ~ {data:{RandomNumber:5}, Tags:["NumberMarker"]}
summon marker ~ ~ ~ {data:{RandomNumber:6}, Tags:["NumberMarker"]}

# Randomly assign players a life count based on available markers

scoreboard players set @s tl_lives 0
execute as @a store result score @s tl_lives run data get entity @e[type=marker,tag=NumberMarker,sort=random,limit=1] data.RandomNumber

# Remove markers

kill @e[tag=NumberMarker]

# Tell people how many lives they have with the appropriate text colour

title @a[scores={tl_lives=3}] title [{"score":{"name":"*","objective":"tl_lives"},"bold":true,"color":"green"},{"text":" lives!","bold":true,"color":"dark_green"}]
title @a[scores={tl_lives=4..}] title [{"score":{"name":"*","objective":"tl_lives"},"bold":true,"color":"dark_green"},{"text":" lives!","bold":true,"color":"green"}]
