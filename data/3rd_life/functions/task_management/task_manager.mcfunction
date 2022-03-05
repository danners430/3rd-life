# Check for task time

execute store result score time calc run time query daytime
execute if score time calc matches 2000 run function 3rd_life:task_management/end_of_day
execute if score time calc matches 2200 run function 3rd_life:task_management/persistent_run

# Check for daily task completion
# Functions only run when:
# • Player has not yet completed the task
# • Player has the correct task assigned
# • Player has completed the task (check scoreboard)

execute as @a[scores={3rd_daily=1,3rd_daily_calc=1,3rd_PlayerKills=1}] run function 3rd_life:task_management/daily_task_complete
execute as @a[scores={3rd_daily=1,3rd_daily_calc=2,3rd_KillBat=3}] run function 3rd_life:task_management/daily_task_complete
execute as @a[scores={3rd_daily=1,3rd_daily_calc=3,3rd_KillChicken=5}] run function 3rd_life:task_management/daily_task_complete
execute as @a[scores={3rd_daily=1,3rd_daily_calc=4,3rd_KillCow=5}] run function 3rd_life:task_management/daily_task_complete
execute as @a[scores={3rd_daily=1,3rd_daily_calc=5,3rd_KillSheep=5}] run function 3rd_life:task_management/daily_task_complete
execute as @a[scores={3rd_daily=1,3rd_daily_calc=6,3rd_KillZombie=1}] run function 3rd_life:task_management/daily_task_complete
execute as @a[scores={3rd_daily=1,3rd_daily_calc=7,3rd_KillCreeper=1}] run function 3rd_life:task_management/daily_task_complete
execute as @a[scores={3rd_daily=1,3rd_daily_calc=8,3rd_KillSkeleton=1}] run function 3rd_life:task_management/daily_task_complete
execute as @a[scores={3rd_daily=1,3rd_daily_calc=9,3rd_KillSpider=1}] run function 3rd_life:task_management/daily_task_complete
execute as @a[scores={3rd_daily=1,3rd_daily_calc=10,3rd_AnimalsBred=5}] run function 3rd_life:task_management/daily_task_complete
execute as @a[scores={3rd_daily=1,3rd_daily_calc=11,3rd_FishCaught=3}] run function 3rd_life:task_management/daily_task_complete
execute as @a[scores={3rd_daily=1,3rd_daily_calc=12,3rd_MineCoal=10}] run function 3rd_life:task_management/daily_task_complete
execute as @a[scores={3rd_daily=1,3rd_daily_calc=13,3rd_MineIron=10}] run function 3rd_life:task_management/daily_task_complete
execute as @a[scores={3rd_daily=1,3rd_daily_calc=14,3rd_MineRedstone=5}] run function 3rd_life:task_management/daily_task_complete
execute as @a[scores={3rd_daily=1,3rd_daily_calc=15,3rd_MineGold=5}] run function 3rd_life:task_management/daily_task_complete
execute as @a[scores={3rd_daily=1,3rd_daily_calc=16,3rd_VillagerTrades=1}] run function 3rd_life:task_management/daily_task_complete

# Check for persistent task completion

execute as @a[scores={3rd_persistent=1,3rd_persistent_calc=1,3rd_CraftEnchantingTable=1}] run function 3rd_life:task_management/persistent_task_complete
execute as @a[scores={3rd_persistent=1,3rd_persistent_calc=2,3rd_RecordPlayed=1}] run function 3rd_life:task_management/persistent_task_complete
execute as @a[scores={3rd_persistent=1,3rd_persistent_calc=3,3rd_WalkWhileCrouched=500}] run function 3rd_life:task_management/persistent_task_complete
execute as @a[scores={3rd_persistent=1,3rd_persistent_calc=4,3rd_RaidsWon=1}] run function 3rd_life:task_management/persistent_task_complete
execute as @a[scores={3rd_persistent=1,3rd_persistent_calc=5,3rd_MineDiamond=10}] run function 3rd_life:task_management/persistent_task_complete
execute as @a[scores={3rd_persistent=1,3rd_persistent_calc=6,3rd_MineObsidian=20}] run function 3rd_life:task_management/persistent_task_complete
execute as @a[scores={3rd_persistent=1,3rd_persistent_calc=7,3rd_CraftNetheriteBlock=1}] run function 3rd_life:task_management/persistent_task_complete
execute as @a[scores={3rd_persistent=1,3rd_persistent_calc=8,3rd_BreakDiamondPick=1}] run function 3rd_life:task_management/persistent_task_complete
execute as @a[scores={3rd_persistent=1,3rd_persistent_calc=9,3rd_KillWitherSkeletons=10}] run function 3rd_life:task_management/persistent_task_complete
execute as @a[scores={3rd_persistent=1,3rd_persistent_calc=10,3rd_KillCreepers=10}] run function 3rd_life:task_management/persistent_task_complete
execute as @a[scores={3rd_persistent=1,3rd_persistent_calc=11,3rd_PotionsUsed=10}] run function 3rd_life:task_management/persistent_task_complete