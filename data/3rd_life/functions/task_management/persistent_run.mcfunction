# Summon number markers

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

# Randomly assign a new task to everyone who doesn't already have a persistent task

execute as @a[scores={3rd_persistent=0}] store result score @s 3rd_persistent_calc run data get entity @e[type=marker,tag=NumberMarker,sort=random,limit=1] data.RandomNumber

# Run the start function for the people with new tasks

execute as @a[scores={3rd_persistent_calc=1,3rd_persistent=0}] run function 3rd_life:task_management/persistent_tasks/enchanting_table
execute as @a[scores={3rd_persistent_calc=2,3rd_persistent=0}] run function 3rd_life:task_management/persistent_tasks/play_record
execute as @a[scores={3rd_persistent_calc=3,3rd_persistent=0}] run function 3rd_life:task_management/persistent_tasks/crouch
execute as @a[scores={3rd_persistent_calc=4,3rd_persistent=0}] run function 3rd_life:task_management/persistent_tasks/raid_win
execute as @a[scores={3rd_persistent_calc=5,3rd_persistent=0}] run function 3rd_life:task_management/persistent_tasks/diamond
execute as @a[scores={3rd_persistent_calc=6,3rd_persistent=0}] run function 3rd_life:task_management/persistent_tasks/obsidian
execute as @a[scores={3rd_persistent_calc=7,3rd_persistent=0}] run function 3rd_life:task_management/persistent_tasks/netherite
execute as @a[scores={3rd_persistent_calc=8,3rd_persistent=0}] run function 3rd_life:task_management/persistent_tasks/break_pick
execute as @a[scores={3rd_persistent_calc=9,3rd_persistent=0}] run function 3rd_life:task_management/persistent_tasks/wither_skelly
execute as @a[scores={3rd_persistent_calc=10,3rd_persistent=0}] run function 3rd_life:task_management/persistent_tasks/creepers
execute as @a[scores={3rd_persistent_calc=11,3rd_persistent=0}] run function 3rd_life:task_management/persistent_tasks/potions
execute as @a[scores={3rd_persistent_calc=12,3rd_persistent=0}] run function 3rd_life:task_management/persistent_tasks/return_to_sender
execute as @a[scores={3rd_persistent_calc=13,3rd_persistent=0}] run function 3rd_life:task_management/persistent_tasks/zombie_doctor
execute as @a[scores={3rd_persistent_calc=14,3rd_persistent=0}] run function 3rd_life:task_management/persistent_tasks/oh_shiny
execute as @a[scores={3rd_persistent_calc=15,3rd_persistent=0}] run function 3rd_life:task_management/persistent_tasks/country_lode
execute as @a[scores={3rd_persistent_calc=16,3rd_persistent=0}] run function 3rd_life:task_management/persistent_tasks/spooky_scary_skeleton
execute as @a[scores={3rd_persistent_calc=17,3rd_persistent=0}] run function 3rd_life:task_management/persistent_tasks/furious_cocktail
execute as @a[scores={3rd_persistent_calc=18,3rd_persistent=0}] run function 3rd_life:task_management/persistent_tasks/nine_lives

# Show title

title @a[scores={3rd_persistent=0}] title {"text":"New difficult task:"}

# Set scoreboard to show players have task

scoreboard players set @a[scores={3rd_persistent=0}] 3rd_persistent 1