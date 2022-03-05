# Set worldborder
worldborder center ~ ~
worldborder set 700

# Add working objectives

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

# Add persistent task scoreboards

scoreboard objectives add 3rd_BreakDiamondPick minecraft.broken:minecraft.diamond_pickaxe "Diamond Pickaxes Broken"
scoreboard objectives add 3rd_CraftEnchantingTable minecraft.crafted:minecraft.enchanting_table "Enchanting Tables Crafted"
scoreboard objectives add 3rd_CraftNetheriteBlock minecraft.crafted:minecraft.netherite_block "Netherrite Blocks Crafted"
scoreboard objectives add 3rd_KillCreepers minecraft.killed:minecraft.creeper "Creepers Killed"
scoreboard objectives add 3rd_KillWitherSkeletons minecraft.killed:minecraft.wither_skeleton "Wither Skeletons Killed"
scoreboard objectives add 3rd_MineDiamond minecraft.mined:minecraft.diamond_ore "Diamonds Mined"
scoreboard objectives add 3rd_MineObsidian minecraft.mined:minecraft.obsidian "Obsidian Mined"
scoreboard objectives add 3rd_RaidsWon minecraft.custom:minecraft.raid_win "Raids Won"
scoreboard objectives add 3rd_RecordPlayed minecraft.custom:minecraft.play_record "Records Played"
scoreboard objectives add 3rd_PotionsUsed minecraft.used:minecraft.potion "Potions Used"
scoreboard objectives add 3rd_WalkWhileCrouched minecraft.custom:minecraft.crouch_one_cm "Distance While Crouched"

# Add daily objective stats

scoreboard objectives add 3rd_AnimalsBred minecraft.custom:minecraft.animals_bred "Animals Bred"
scoreboard objectives add 3rd_FishCaught minecraft.custom:minecraft.fish_caught "Fish Caught"
scoreboard objectives add 3rd_KillBat minecraft.killed:minecraft.bat "Kill Bat"
scoreboard objectives add 3rd_KillChicken minecraft.killed:minecraft.chicken "Kill Chicken"
scoreboard objectives add 3rd_KillCow minecraft.killed:minecraft.cow "Kill Cow"
scoreboard objectives add 3rd_KillSheep minecraft.killed:minecraft.sheep "Kill Sheep"
scoreboard objectives add 3rd_KillZombie minecraft.killed:minecraft.zombie "Kill Zombie"
scoreboard objectives add 3rd_KillCreeper minecraft.killed:minecraft.creeper "Kill Creeper"
scoreboard objectives add 3rd_KillSkeleton minecraft.killed:minecraft.skeleton "Kill Skeleton"
scoreboard objectives add 3rd_KillSpider minecraft.killed:minecraft.spider "Kill Spider"
scoreboard objectives add 3rd_MineCoal minecraft.mined:minecraft.coal_ore "Mine Coal"
scoreboard objectives add 3rd_MineIron minecraft.mined:minecraft.iron_ore "Mine Iron"
scoreboard objectives add 3rd_MineRedstone minecraft.mined:minecraft.redstone_ore "Mine Redstone"
scoreboard objectives add 3rd_MineGold minecraft.mined:minecraft.gold_ore "Mine Gold"
scoreboard objectives add 3rd_PlayerKills minecraft.custom:minecraft.player_kills "Player Kills"
scoreboard objectives add 3rd_VillagerTrades minecraft.custom:minecraft.traded_with_villager "Traded With Villagers"

# Prevent infinite loops

execute store result score time calc run time query daytime
execute if score time calc matches 2000 run time set 2001
execute if score time calc matches 2200 run time set 2201

# Delete old number markers

kill @e[tag=NumberMarker]