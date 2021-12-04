summon marker ~ ~ ~ {data:{RandomNumber:3}, Tags:["NumberMarker"]}
summon marker ~ ~ ~ {data:{RandomNumber:4}, Tags:["NumberMarker"]}
summon marker ~ ~ ~ {data:{RandomNumber:5}, Tags:["NumberMarker"]}
summon marker ~ ~ ~ {data:{RandomNumber:6}, Tags:["NumberMarker"]}

execute as @a store result score @s 3rd_lives run data get entity @e[type=marker,tag=NumberMarker,sort=random,limit=1] data.RandomNumber

kill @e[tag=NumberMarker]

title @a[scores={3rd_lives=3}] title [{"score":{"name":"*","objective":"3rd_lives"},"bold":true,"color":"green"},{"text":" lives!","bold":true,"color":"green"}]
title @a[scores={3rd_lives=4..}] title [{"score":{"name":"*","objective":"3rd_lives"},"bold":true,"color":"dark_green"},{"text":" lives!","bold":true,"color":"dark_green"}]