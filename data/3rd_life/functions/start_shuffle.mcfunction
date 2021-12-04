summon marker ~ ~ ~ {data:{RandomNumber:3}, Tags:["NumberMarker"]}
summon marker ~ ~ ~ {data:{RandomNumber:4}, Tags:["NumberMarker"]}
summon marker ~ ~ ~ {data:{RandomNumber:5}, Tags:["NumberMarker"]}
summon marker ~ ~ ~ {data:{RandomNumber:6}, Tags:["NumberMarker"]}

execute as @a store result score @s LifeCount run data get entity @e[type=marker,tag=NumberMarker,sort=random,limit=1] data.RandomNumber

kill @e[tag=NumberMarker]