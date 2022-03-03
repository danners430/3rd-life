# Set worldborder
worldborder center ~ ~
worldborder set 700

# Add objectives
scoreboard objectives add 3rd_death deathCount
scoreboard objectives add 3rd_lives dummy
scoreboard objectives add 3rd_gift trigger
scoreboard objectives add 3rd_started dummy
scoreboard objectives add 3rd_helmet dummy
scoreboard objectives add calc dummy
scoreboard players set @a 3rd_started 0
scoreboard players set @a 3rd_helmet 0
scoreboard objectives add 3rd_daily_calc dummy
scoreboard objectives add 3rd_daily dummy
scoreboard objectives add 3rd_persistent_calc dummy
scoreboard objectives add 3rd_persistent dummy

# Add teams
# team add 3rd_full
# team modify 3rd_full color gold
team add 3rd_extra
team modify 3rd_extra color dark_green
team add 3rd_green
team modify 3rd_green color green
team add 3rd_yellow
team modify 3rd_yellow color yellow
team add 3rd_red
team modify 3rd_red color red
team add 3rd_died
team modify 3rd_died prefix ["",{"text": "["},{"text": "DIED","color": "gray"},{"text": "] "}]

# Default to no weather and no daytime

gamerule doDaylightCycle false
gamerule doWeatherCycle false

# Add daily task scoreboards

scoreboard objectives add 3rd_hunter dummy
scoreboard objectives add 3rd_bats dummy
scoreboard objectives add 3rd_chickens dummy
scoreboard objectives add 3rd_cows dummy
scoreboard objectives add 3rd_sheep dummy
scoreboard objectives add 3rd_zombie dummy
scoreboard objectives add 3rd_creeper dummy
scoreboard objectives add 3rd_skeleton dummy
scoreboard objectives add 3rd_spider dummy
scoreboard objectives add 3rd_breed dummy
scoreboard objectives add 3rd_fish dummy
scoreboard objectives add 3rd_coal dummy
scoreboard objectives add 3rd_iron dummy
scoreboard objectives add 3rd_redstone dummy
scoreboard objectives add 3rd_gold dummy

# Add persistent task scoreboards



# Add stat objectives

scoreboard objectives add 3rd_KillBat minecraft.killed:minecraft.bat "Kill Bat"
scoreboard objectives add 3rd_KillChicken minecraft.killed:minecraft.chicken "Kill Chicken"
scoreboard objectives add 3rd_KillCow minecraft.killed:minecraft.cow "Kill Cow"
scoreboard objectives add 3rd_KillSheep minecraft.killed:minecraft.sheep "Kill Sheep"
scoreboard objectives add 3rd_KillZombie minecraft.killed:minecraft.zombie "Kill Zombie"
scoreboard objectives add 3rd_KillCreeper minecraft.killed:minecraft.creeper "Kill Creeper"
scoreboard objectives add 3rd_KillSkeleton minecraft.killed:minecraft.skeleton "Kill Skeleton"
scoreboard objectives add 3rd_KillSpider minecraft.killed:minecraft.spider "Kill Spider"
scoreboard objectives add 3rd_AnimalsBred minecraft.custom:minecraft.animals_bred "Animals Bred"
scoreboard objectives add 3rd_FishCaught minecraft.custom:minecraft.fish_caught "Fish Caught"
scoreboard objectives add 3rd_MineCoal minecraft.mined:minecraft.coal_ore "Mine Coal"
scoreboard objectives add 3rd_MineIron minecraft.mined:minecraft.iron_ore "Mine Iron"
scoreboard objectives add 3rd_MineRedstone minecraft.mined:minecraft.redstone_ore "Mine Redstone"
scoreboard objectives add 3rd_MineGold minecraft.mined:minecraft.gold_ore "Mine Gold"
scoreboard objectives add 3rd_PlayerKills minecraft.custom:minecraft.player_kills "Player Kills"