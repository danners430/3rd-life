# Check death count, decrement lives and reset death counter

execute as @a[scores={3rd_death=1..}] run scoreboard players remove @s 3rd_lives 1
execute as @a[scores={3rd_death=1..}] run scoreboard players set @s 3rd_death 0

# Change gamemode to spectator when player loses all their lives

gamemode spectator @a[scores={3rd_lives=0},gamemode=!spectator]

# Track lives and give them team

team join 3rd_died @a[scores={3rd_lives=0},team=!3rd_died]
team join 3rd_red @a[scores={3rd_lives=1},team=!3rd_red]
team join 3rd_yellow @a[scores={3rd_lives=2},team=!3rd_yellow]
team join 3rd_green @a[scores={3rd_lives=3},team=!3rd_green]
team join 3rd_extra @a[scores={3rd_lives=4..},team=!3rd_extra]
# team join 3rd_extra @a[scores={3rd_lives=4..5},team=!3rd_extra]
# team join 3rd_full @a[scores={3rd_lives=6..},team=!3rd_full]

# Check if player wear helmet

execute as @a[predicate=3rd_life:wear_helmet,scores={3rd_helmet=0}] run title @a title [{"selector":"@s"},{"text": " is wearing something on their head!","color": "red"}]
execute as @a[predicate=3rd_life:wear_helmet,scores={3rd_helmet=0}] run scoreboard players set @s 3rd_helmet 1
execute as @a[predicate=!3rd_life:wear_helmet,scores={3rd_helmet=1}] run scoreboard players set @s 3rd_helmet 0

# Enable Life Gifting score

execute as @a[scores={3rd_gift=0}] run scoreboard players enable @s 3rd_gift
execute as @a[scores={3rd_gift=0}] run scoreboard players set @s 3rd_gift 1

# Check for life gifting

execute as @a[scores={3rd_gift=2}] run function 3rd_life:life_gift/life_gifting

# Check for task time

execute store result score time calc run time query daytime
execute if score time calc matches 2000 run schedule function 3rd_life:task_management/end_of_day 1s
execute if score time calc matches 2200 run schedule function 3rd_life:task_management/persistent_run 1s

# Check for daily task completion

execute as @a[scores={3rd_daily=1,3rd_daily_calc=1,3rd_PlayerKills=1}] run function 3rd_life:task_management/task_complete
execute as @a[scores={3rd_daily=1,3rd_daily_calc=2,3rd_KillBat=3}] run function 3rd_life:task_management/task_complete
execute as @a[scores={3rd_daily=1,3rd_daily_calc=3,3rd_KillChicken=5}] run function 3rd_life:task_management/task_complete
execute as @a[scores={3rd_daily=1,3rd_daily_calc=4,3rd_KillCow=5}] run function 3rd_life:task_management/task_complete
execute as @a[scores={3rd_daily=1,3rd_daily_calc=5,3rd_KillSheep=5}] run function 3rd_life:task_management/task_complete
execute as @a[scores={3rd_daily=1,3rd_daily_calc=6,3rd_KillZombie=1}] run function 3rd_life:task_management/task_complete
execute as @a[scores={3rd_daily=1,3rd_daily_calc=7,3rd_KillCreeper=1}] run function 3rd_life:task_management/task_complete
execute as @a[scores={3rd_daily=1,3rd_daily_calc=8,3rd_KillSkeleton=1}] run function 3rd_life:task_management/task_complete
execute as @a[scores={3rd_daily=1,3rd_daily_calc=9,3rd_KillSpider=1}] run function 3rd_life:task_management/task_complete
execute as @a[scores={3rd_daily=1,3rd_daily_calc=10,3rd_AnimalsBred=5}] run function 3rd_life:task_management/task_complete
execute as @a[scores={3rd_daily=1,3rd_daily_calc=11,3rd_FishCaught=3}] run function 3rd_life:task_management/task_complete
execute as @a[scores={3rd_daily=1,3rd_daily_calc=12,3rd_MineCoal=10}] run function 3rd_life:task_management/task_complete
execute as @a[scores={3rd_daily=1,3rd_daily_calc=13,3rd_MineIron=10}] run function 3rd_life:task_management/task_complete
execute as @a[scores={3rd_daily=1,3rd_daily_calc=14,3rd_MineRedstone=5}] run function 3rd_life:task_management/task_complete
execute as @a[scores={3rd_daily=1,3rd_daily_calc=15,3rd_MineGold=5}] run function 3rd_life:task_management/task_complete