# Check for task time

execute store result score time calc run time query daytime
execute if score time calc matches 2000 run function task_life:task_management/end_of_day
execute if score time calc matches 2200 run function task_life:task_management/persistent_run

# Add deepslate totals to normal totals

execute as @a run scoreboard players operation @s tl_MineCoal += @s tl_MineDeepCoal
execute as @a run scoreboard players operation @s tl_MineIron += @s tl_MineDeepIron
execute as @a run scoreboard players operation @s tl_MineRedstone += @s tl_MineDeepRedstone
execute as @a run scoreboard players operation @s tl_MineGold += @s tl_MineDeepGold
execute as @a run scoreboard players operation @s tl_MineDiamond += @s tl_MineDeepDiamond
scoreboard players set @a tl_MineDeepCoal 0
scoreboard players set @a tl_MineDeepIron 0
scoreboard players set @a tl_MineDeepRedstone 0
scoreboard players set @a tl_MineDeepGold 0
scoreboard players set @a tl_MineDeepDiamond 0

# Check for daily task completion
# Functions only run when:
# • Player has not yet completed the task
# • Player has the correct task assigned
# • Player has completed the task (check scoreboard)

execute as @a[scores={tl_daily=1,tl_daily_calc=1,tl_PlayerKills=1..}] run function task_life:task_management/daily_task_complete
execute as @a[scores={tl_daily=1,tl_daily_calc=2,tl_KillBat=3..}] run function task_life:task_management/daily_task_complete
execute as @a[scores={tl_daily=1,tl_daily_calc=3,tl_KillChicken=5..}] run function task_life:task_management/daily_task_complete
execute as @a[scores={tl_daily=1,tl_daily_calc=4,tl_KillCow=5..}] run function task_life:task_management/daily_task_complete
execute as @a[scores={tl_daily=1,tl_daily_calc=5,tl_KillSheep=5..}] run function task_life:task_management/daily_task_complete
execute as @a[scores={tl_daily=1,tl_daily_calc=6,tl_KillZombie=1..}] run function task_life:task_management/daily_task_complete
execute as @a[scores={tl_daily=1,tl_daily_calc=7,tl_KillCreeper=1..}] run function task_life:task_management/daily_task_complete
execute as @a[scores={tl_daily=1,tl_daily_calc=8,tl_KillSkeleton=1..}] run function task_life:task_management/daily_task_complete
execute as @a[scores={tl_daily=1,tl_daily_calc=9,tl_KillSpider=1..}] run function task_life:task_management/daily_task_complete
execute as @a[scores={tl_daily=1,tl_daily_calc=10,tl_AnimalsBred=5..}] run function task_life:task_management/daily_task_complete
execute as @a[scores={tl_daily=1,tl_daily_calc=11,tl_FishCaught=3..}] run function task_life:task_management/daily_task_complete
execute as @a[scores={tl_daily=1,tl_daily_calc=12,tl_MineCoal=10..}] run function task_life:task_management/daily_task_complete
execute as @a[scores={tl_daily=1,tl_daily_calc=13,tl_MineIron=10..}] run function task_life:task_management/daily_task_complete
execute as @a[scores={tl_daily=1,tl_daily_calc=14,tl_MineRedstone=5..}] run function task_life:task_management/daily_task_complete
execute as @a[scores={tl_daily=1,tl_daily_calc=15,tl_MineGold=5..}] run function task_life:task_management/daily_task_complete

# Check for persistent task completion

execute as @a[scores={tl_persistent=1,tl_persistent_calc=1,tl_CraftEnchantingTable=1..}] run function task_life:task_management/persistent_task_complete
execute as @a[scores={tl_persistent=1,tl_persistent_calc=2,tl_RecordPlayed=1..}] run function task_life:task_management/persistent_task_complete
execute as @a[scores={tl_persistent=1,tl_persistent_calc=3,tl_WalkWhileCrouched=50000..}] run function task_life:task_management/persistent_task_complete
execute as @a[scores={tl_persistent=1,tl_persistent_calc=4,tl_RaidsWon=1..}] run function task_life:task_management/persistent_task_complete
execute as @a[scores={tl_persistent=1,tl_persistent_calc=5,tl_MineDiamond=10..}] run function task_life:task_management/persistent_task_complete
execute as @a[scores={tl_persistent=1,tl_persistent_calc=6,tl_MineObsidian=20..}] run function task_life:task_management/persistent_task_complete
execute as @a[scores={tl_persistent=1,tl_persistent_calc=7,tl_CraftNetheriteBlock=1..}] run function task_life:task_management/persistent_task_complete
execute as @a[scores={tl_persistent=1,tl_persistent_calc=8,tl_BreakDiamondPick=1..}] run function task_life:task_management/persistent_task_complete
execute as @a[scores={tl_persistent=1,tl_persistent_calc=9,tl_KillWitherSkeletons=10..}] run function task_life:task_management/persistent_task_complete
execute as @a[scores={tl_persistent=1,tl_persistent_calc=10,tl_KillCreepers=10..}] run function task_life:task_management/persistent_task_complete
execute as @a[scores={tl_persistent=1,tl_persistent_calc=11,tl_PotionsUsed=10..}] run function task_life:task_management/persistent_task_complete
execute as @a[scores={tl_persistent=1,tl_persistent_calc=19,tl_VillagerTrades=1..}] run function task_life:task_management/persistent_task_complete

# Enable task checking scores

execute as @a[scores={tl_DailyTask=0}] run scoreboard players enable @s tl_DailyTask
execute as @a[scores={tl_DailyTask=0}] run scoreboard players set @s tl_DailyTask 1
execute as @a[scores={tl_PersistentTask=0}] run scoreboard players enable @s tl_PersistentTask
execute as @a[scores={tl_PersistentTask=0}] run scoreboard players set @s tl_PersistentTask 1

# Check for task checking

execute as @a[scores={tl_DailyTask=2}] run function task_life:task_management/display_daily
execute as @a[scores={tl_PersistentTask=2}] run function task_life:task_management/display_persistent