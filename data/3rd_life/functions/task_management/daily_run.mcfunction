summon marker ~ ~ ~ {data:{RandomNumber:1}, Tags:["NumberMarker"]}
summon marker ~ ~ ~ {data:{RandomNumber:2}, Tags:["NumberMarker"]}
summon marker ~ ~ ~ {data:{RandomNumber:3}, Tags:["NumberMarker"]}
summon marker ~ ~ ~ {data:{RandomNumber:4}, Tags:["NumberMarker"]}
summon marker ~ ~ ~ {data:{RandomNumber:5}, Tags:["NumberMarker"]}
summon marker ~ ~ ~ {data:{RandomNumber:6}, Tags:["NumberMarker"]}
summon marker ~ ~ ~ {data:{RandomNumber:7}, Tags:["NumberMarker"]}
summon marker ~ ~ ~ {data:{RandomNumber:8}, Tags:["NumberMarker"]}
summon marker ~ ~ ~ {data:{RandomNumber:9}, Tags:["NumberMarker"]}
summon marker ~ ~ ~ {data:{RandomNumber:10}, Tags:["NumberMarker"]}
summon marker ~ ~ ~ {data:{RandomNumber:11}, Tags:["NumberMarker"]}
summon marker ~ ~ ~ {data:{RandomNumber:12}, Tags:["NumberMarker"]}
summon marker ~ ~ ~ {data:{RandomNumber:13}, Tags:["NumberMarker"]}
summon marker ~ ~ ~ {data:{RandomNumber:14}, Tags:["NumberMarker"]}
summon marker ~ ~ ~ {data:{RandomNumber:15}, Tags:["NumberMarker"]}

execute as @a store result score @s 3rd_daily_calc run data get entity @e[type=marker,tag=NumberMarker,sort=random,limit=1] data.RandomNumber

execute as @a[scores={3rd_daily_calc=1}] run function 3rd_life:task_management/daily_tasks/hunter
execute as @a[scores={3rd_daily_calc=2}] run function 3rd_life:task_management/daily_tasks/bats
execute as @a[scores={3rd_daily_calc=3}] run function 3rd_life:task_management/daily_tasks/chickens
execute as @a[scores={3rd_daily_calc=4}] run function 3rd_life:task_management/daily_tasks/cows
execute as @a[scores={3rd_daily_calc=5}] run function 3rd_life:task_management/daily_tasks/sheep
execute as @a[scores={3rd_daily_calc=6}] run function 3rd_life:task_management/daily_tasks/zombie
execute as @a[scores={3rd_daily_calc=7}] run function 3rd_life:task_management/daily_tasks/creeper
execute as @a[scores={3rd_daily_calc=8}] run function 3rd_life:task_management/daily_tasks/skeleton
execute as @a[scores={3rd_daily_calc=9}] run function 3rd_life:task_management/daily_tasks/spider
execute as @a[scores={3rd_daily_calc=10}] run function 3rd_life:task_management/daily_tasks/breed
execute as @a[scores={3rd_daily_calc=11}] run function 3rd_life:task_management/daily_tasks/fish
execute as @a[scores={3rd_daily_calc=12}] run function 3rd_life:task_management/daily_tasks/coal
execute as @a[scores={3rd_daily_calc=13}] run function 3rd_life:task_management/daily_tasks/iron
execute as @a[scores={3rd_daily_calc=14}] run function 3rd_life:task_management/daily_tasks/redstone
execute as @a[scores={3rd_daily_calc=15}] run function 3rd_life:task_management/daily_tasks/gold

title @a title {"text":"Your daily task is..."}

gamerule doDaylightCycle true