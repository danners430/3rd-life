# Summon number markers - 3 markers with "1" to encourage hunters to be created

summon marker ~ ~ ~ {data:{RandomNumber:1}, Tags:["NumberMarker"]}
summon marker ~ ~ ~ {data:{RandomNumber:1}, Tags:["NumberMarker"]}
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
summon marker ~ ~ ~ {data:{RandomNumber:16}, Tags:["NumberMarker"]}
summon marker ~ ~ ~ {data:{RandomNumber:17}, Tags:["NumberMarker"]}
summon marker ~ ~ ~ {data:{RandomNumber:18}, Tags:["NumberMarker"]}
summon marker ~ ~ ~ {data:{RandomNumber:19}, Tags:["NumberMarker"]}

scoreboard players set @a tl_daily_calc 0
execute as @a[scores={tl_lives=2..}] store result score @s tl_daily_calc run data get entity @e[type=marker,tag=NumberMarker,sort=random,limit=1] data.RandomNumber

execute as @a[scores={tl_daily=0}] run advancement grant @s only task_life:tl_sticky_situation
execute as @a[scores={tl_daily=0}] run advancement grant @s only task_life:tl_ol_betsy
execute as @a[scores={tl_daily=0}] run advancement grant @s only task_life:tl_hired_help
execute as @a[scores={tl_daily=0}] run advancement grant @s only task_life:tl_sniper_duel

execute as @a[scores={tl_daily_calc=1}] run function task_life:task_management/daily_tasks/hunter
execute as @a[scores={tl_daily_calc=2}] run function task_life:task_management/daily_tasks/bats
execute as @a[scores={tl_daily_calc=3}] run function task_life:task_management/daily_tasks/chickens
execute as @a[scores={tl_daily_calc=4}] run function task_life:task_management/daily_tasks/cows
execute as @a[scores={tl_daily_calc=5}] run function task_life:task_management/daily_tasks/sheep
execute as @a[scores={tl_daily_calc=6}] run function task_life:task_management/daily_tasks/zombie
execute as @a[scores={tl_daily_calc=7}] run function task_life:task_management/daily_tasks/creeper
execute as @a[scores={tl_daily_calc=8}] run function task_life:task_management/daily_tasks/skeleton
execute as @a[scores={tl_daily_calc=9}] run function task_life:task_management/daily_tasks/spider
execute as @a[scores={tl_daily_calc=10}] run function task_life:task_management/daily_tasks/breed
execute as @a[scores={tl_daily_calc=11}] run function task_life:task_management/daily_tasks/fish
execute as @a[scores={tl_daily_calc=12}] run function task_life:task_management/daily_tasks/coal
execute as @a[scores={tl_daily_calc=13}] run function task_life:task_management/daily_tasks/iron
execute as @a[scores={tl_daily_calc=14}] run function task_life:task_management/daily_tasks/redstone
execute as @a[scores={tl_daily_calc=15}] run function task_life:task_management/daily_tasks/gold
execute as @a[scores={tl_daily_calc=16}] run function task_life:task_management/daily_tasks/sticky_situation
execute as @a[scores={tl_daily_calc=17}] run function task_life:task_management/daily_tasks/ol_betsy
execute as @a[scores={tl_daily_calc=18}] run function task_life:task_management/daily_tasks/hired_help
execute as @a[scores={tl_daily_calc=19}] run function task_life:task_management/daily_tasks/sniper_duel

title @a[scores={tl_daily=1}] title {"text":"Your daily task is..."}

gamerule doDaylightCycle true