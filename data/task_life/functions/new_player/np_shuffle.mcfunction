# Generate markers for 3-6 lives

summon marker ~ ~ ~ {data:{RandomNumber:3}, Tags:["NumberMarker"]}
summon marker ~ ~ ~ {data:{RandomNumber:4}, Tags:["NumberMarker"]}
summon marker ~ ~ ~ {data:{RandomNumber:5}, Tags:["NumberMarker"]}
summon marker ~ ~ ~ {data:{RandomNumber:6}, Tags:["NumberMarker"]}

# Randomly assign players a life count based on available markers

<<<<<<< HEAD
execute as @s store result score @s 3rd_lives run data get entity @e[type=marker,tag=NumberMarker,sort=random,limit=1] data.RandomNumber
=======
scoreboard players set @s tl_lives 0
execute as @s store result score @s tl_lives run data get entity @e[type=marker,tag=NumberMarker,sort=random,limit=1] data.RandomNumber
>>>>>>> 1d5d0e2d0e6da6a4314106fef8ed2e1f00b4a82e

# Remove markers

kill @e[tag=NumberMarker]

# Tell people how many lives they have with the appropriate text colour

<<<<<<< HEAD
title @s[scores={3rd_lives=3}] title [{"text": "You have... "},{"score":{"name":"*","objective":"3rd_lives"},"bold":true,"color":"green"},{"text":" lives!","bold":true,"color":"dark_green"}]
title @s[scores={3rd_lives=4..}] title [{"text": "You have... "},{"score":{"name":"*","objective":"3rd_lives"},"bold":true,"color":"dark_green"},{"text":" lives!","bold":true,"color":"green"}]
# title @s[scores={3rd_lives=4..5}] title [{"score":{"name":"*","objective":"3rd_lives"},"bold":true,"color":"dark_green"},{"text":" lives!","bold":true,"color":"green"}]
# title @s[scores={3rd_lives=6..}] title [{"score":{"name":"*","objective":"3rd_lives"},"bold":true,"color":"gold"},{"text":" lives!","bold":true,"color":"gold"}]
=======
title @s[scores={tl_lives=3}] title [{"text": "You have... "},{"score":{"name":"*","objective":"tl_lives"},"bold":true,"color":"green"},{"text":" lives!","bold":true,"color":"dark_green"}]
title @s[scores={tl_lives=4..}] title [{"text": "You have... "},{"score":{"name":"*","objective":"tl_lives"},"bold":true,"color":"dark_green"},{"text":" lives!","bold":true,"color":"green"}]
>>>>>>> 1d5d0e2d0e6da6a4314106fef8ed2e1f00b4a82e
